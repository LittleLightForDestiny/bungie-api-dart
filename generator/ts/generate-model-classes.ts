import { SchemaObject, OpenAPIObject, PathItemObject } from "openapi3-ts";
import { generateHeader, writeOutFile, addImport, docComment, indent } from "./generate-common";
import _ = require("underscore");
import { DefInfo, getRef, resolveSchemaType, getReferencedTypes, isDefaultType } from "./util";
import { TypeMaps } from "./type-index";

export function generateModelClasses(doc: OpenAPIObject, typeMaps: TypeMaps) {
    _.each(typeMaps.byFile, (packageDefs, name) => {
        generateModelClassPackage(name, packageDefs, doc, typeMaps);
    });
}

export function generateModelClassPackage(name: string, defs: DefInfo[], doc: OpenAPIObject, typeMaps: TypeMaps) {
    const filename = `../lib/models/${name.toLowerCase()}.dart`;
    const header = generateHeader(doc);
    const imports = [];
    let specialDefinitions;
    if (name.toLocaleLowerCase() === 'destiny2') {
        specialDefinitions = generateSpecialDefinitions();
    }
    if (name.toLocaleLowerCase() === 'common') {
        specialDefinitions = generateServerResponseDefinitions();
    }

    const classes = _.map(defs, (info: DefInfo) => {
        return generateModelClass(info, doc, typeMaps, imports);
    });
    const importStatements = imports.map((name) => `import './${name}.dart';`);
    const definition = _.compact([header, importStatements.join('\n') + '\n', specialDefinitions, ...classes]).join('\n\n') + '\n';
    writeOutFile(filename, definition);
}

export function generateModelClass(defInfo: DefInfo, doc: OpenAPIObject, typeMaps: TypeMaps, imports: string[]) {
    if (isSpecialType(defInfo.interfaceName)) {
        return null;
    }
    const component = getRef(doc, defInfo.def)!;
    if (component.enum) {
        return;
    }
    const parameters = _.map(component.properties!, (schema: SchemaObject, paramName:string)=>{
        const typeRef = getReferencedTypes(schema);
        if (typeRef) {
            let filename = typeMaps.byDef[typeRef].filename;
            if (filename && imports.indexOf(filename) < 0 && filename != defInfo.filename) {
                imports.push(filename);
            }
        }
        return generateParameterArgument(schema, paramName, doc, typeMaps, defInfo);
    })
    const parameterArgs = _.map(parameters, (p) => {
        return `${p.docString}${p.type} ${p.name}${p.nullable ? '' : ''};`;
    });
    let className = defInfo.interfaceName;
    const constructor = generateJSONConversionFunctions(className, parameters);
    const docString = component.description ? docComment(component.description) + '\n' : '';
    return `${docString}class ${className} {\n${indent(parameterArgs.join('\n'), 1)}\n${indent(constructor, 1)}\n}`;
}

function generateParameterArgument(schema:SchemaObject, paramName:string,  doc:OpenAPIObject, typeMaps:TypeMaps, defInfo:DefInfo): ParameterDefinition {
    let paramType = resolveSchemaType(schema!, doc);

    const docs = schema.description ? [schema.description] : [];
    if (schema['x-mapped-definition']) {
        docs.push(`Mapped to ${typeMaps.byDef[schema['x-mapped-definition'].$ref].interfaceName} in the manifest.`);
    }
    const docString = docs.length ? docComment(docs.join('\n')) + '\n' : '';
    return {docString:docString,
        type:paramType,
        name:paramName,
        nullable: !!schema.nullable
    };
}

function generateJSONConversionFunctions(className:string, parameters:ParameterDefinition[]){
    let constructor = `${className}(${parameters.map((param)=>`this.${param.name}`)});\n`;
    let paramsSet = parameters.map((parameter)=>{
        if(isDefaultType(parameter.type)){
            return `this.${parameter.name} = json['${parameter.name}']`;
        }
        let listType = parameter.type.match(/List<(.*?)>/);
        let mapType = parameter.type.match(/Map<(.*?), (.*?)>/);
        if(listType && mapType){
            return `this.${parameter.name} = null`;
        }
        if(listType && isDefaultType(listType[1])){
            return `this.${parameter.name} = json == null ? [] : json['${parameter.name}'].toList()`;    
        }
        if(listType){
            return `this.${parameter.name} = ${listType[1]}.listFromJSON(json['${parameter.name}'])`;    
        }
        if(mapType && isDefaultType(mapType[2])){
            return `this.${parameter.name} = json['${parameter.name}']`;    
        }
        if(mapType){
            return `this.${parameter.name} = ${mapType[2]}.mapFromJSON(json['${parameter.name}'])`;    
        }
        return `this.${parameter.name} = ${parameter.type}.fromJSON(json['${parameter.name}'])`;
    });
    let fromJSON = `${className}.fromJSON(Map<String, dynamic> json):\n${indent(paramsSet.join(',\n'), 1)};\n`;
    let listFromJSON = `static List<${className}> listFromJSON(List<dynamic> json) {\n`
        +indent(`return json == null\n`, 1)
        +indent(`? new List<${className}>()\n`, 2)
        +indent(`: json.map((value) => new ${className}.fromJSON(value)).toList();\n`, 2)
        +`}\n`;
    let mapFromJSON = `static Map<dynamic, ${className}> mapFromJSON(Map<String, Map<String, dynamic>> json) {\n`
        +indent(`var map = new Map<dynamic, ${className}>();\n`, 1)
        +indent(`if (json != null && json.length > 0) {\n`, 1)
        +indent(`json.forEach((String key, Map<String, dynamic> value) =>\n`, 2)
        +indent(`map[key] = new ${className}.fromJSON(value));\n`, 3)
        +indent(`}\n`, 1)
        +indent(`return map;\n`, 1)
        +`}\n`;
    return `${constructor}\n${fromJSON}\n${listFromJSON}\n${mapFromJSON}\n`;
}

function isSpecialType(name: string) {
    return name.includes('>');
}

function generateSpecialDefinitions() {
    return `class SingleComponentResponse<T> {
    T data;
    int privacy;
}
  
class DictionaryComponentResponse<T> {
    Map<String,T> data;
    int privacy;
}`;
}

function generateServerResponseDefinitions() {
    return `class ServerResponse<T> {
    T response;
    int ErrorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
}`;
}

interface ParameterDefinition{
    docString:string;
    type:string;
    name:string;
    nullable:boolean;
}