import { OpenAPIObject, ReferenceObject, ParameterObject, SchemaObject } from "openapi3-ts";
import { readFileSync } from "fs";
import { ImportInfo } from "../models/ImportInfo";
import { camelCase, get as _get } from "lodash";

export class ApiDocHelper{
    static doc:OpenAPIObject;
    static load():OpenAPIObject{
        let file = readFileSync('../api-src/openapi.json').toString();
        this.doc = JSON.parse(file);
        return this.doc;
    }

    static getParseFunction(obj:ReferenceObject|ParameterObject|SchemaObject, fieldName:String, source:String):string|null{
        if('$ref' in obj){
            let objInfo = obj as ReferenceObject;
            let ref = this.getRef(objInfo.$ref);
            if(ref.type == 'object'){
                return `${this.getRefClassName(objInfo.$ref)}.fromMap(${source})`;
            }
        }
        let param:ParameterObject = obj as ParameterObject;
        if(param.schema){
            return this.getParseFunction(param.schema, fieldName, source);
        }
        if(param.type == 'array' && param.items && param.items.$ref){
            let ref = this.getRef(param.items.$ref);
            if(ref.type == 'object'){
                return `${this.getObjectType(param.items)}.fromList(${source})`;
            }
        }

        if(param.type == 'array' && param.allOf){
            let paramInfo = param.allOf[0] as ReferenceObject;
            let ref = this.getRef(paramInfo.$ref);
            if(ref.type == 'object'){
                return `${this.getObjectType(param.allOf[0])}.fromList(${source})`;
            }
        }
        let isNativeType = this.isNativeType(param);
        if(param.additionalProperties && param['x-dictionary-key']){
            let keyType = this.getObjectType(param['x-dictionary-key']);
            let valueType = this.getObjectType(param.additionalProperties);
            let value = this.getParseFunction(param.additionalProperties, 'v', 'v') || 'v';
            return `Map<String, ${valueType}>.from(${source}.map((k, v)=>MapEntry(k, ${value})))`;
        }

        if(param.type == 'array' && param.items){
            let valueType = this.getObjectType(param.items);
            return `${source}?.cast<${valueType}>() ?? null`;
        }
        
        if(!isNativeType){
            return `${this.getObjectType(param)}.fromMap(${source})`;
        }
        return null;
    }

    static getSerializeFunction(obj:ReferenceObject|ParameterObject|SchemaObject, name:String):string|null{
        if('$ref' in obj){
            let refObject = obj as ReferenceObject;
            let ref = this.getRef(refObject.$ref);
            if(ref.type == 'object'){
                return `this.${name}.toJson()`;
            }
        }
        let param:ParameterObject = obj as ParameterObject;
        if(param.type == 'object'){
            let ref = _get(param, 'allOf[0]');
            if(ref){
                return this.getSerializeFunction(ref, name);
            }
        }
        if(param.additionalProperties && param['x-dictionary-key']){
            let value = this.getSerializeFunction(param.additionalProperties, 'v') || 'v';
            value = value.replace('this.', '');
            return `this.${name}.map((i, v)=>MapEntry(i, ${value}))`;
        }
        if(param.schema){
            return this.getSerializeFunction(param.schema, name);
        }
        if(param.type == 'array' && param.items && param.items.$ref){
            let ref = this.getRef(param.items.$ref);
            if(ref.type == 'object'){
                return `this.${name}.map((item)=>item.toJson()).toList()`;
            }
        }
        if(param.type == 'array' && param.allOf){
            let ref = this.getRef(param.allOf[0].$ref);
            if(ref.type == 'object'){
                return `this.${name}.map((item)=>item.toJson()).toList()`;
            }
        }
        return null;
    }

    static isNativeType(obj:ReferenceObject|ParameterObject|SchemaObject):boolean{
        let refObj = obj as ReferenceObject;
        if(refObj.$ref){
            let ref = this.getRef(refObj.$ref);
            if(ref.type == 'object'){
                return false;
            }else{
                return this.isNativeType(ref);
            }
        }
        let param:ParameterObject = obj as ParameterObject;
        if(param.schema){
            return this.isNativeType(param.schema);
        }

        if(param.type == 'array'){
            return this.isNativeType(param.items);
        }

        if(param.type == 'object' && param.allOf){
            return this.isNativeType(param.allOf[0]);
        }
        if(param.type == 'object' && param.additionalProperties && param['x-dictionary-key']){
            return this.isNativeType(param.additionalProperties);
        }
        return true;
    }

    static getObjectType(obj:ReferenceObject|ParameterObject|SchemaObject):string{
        let refObj:ReferenceObject = obj as ReferenceObject;
        if("$ref" in obj){
            let ref = this.getRef(refObj.$ref);
            if(ref.type == 'object'){
                return this.getRefClassName(refObj.$ref);
            }else{
                return this.getObjectType(ref);
            }
        }
        
        let param:ParameterObject = obj as ParameterObject;
        if(param.schema){
            return this.getObjectType(param.schema);
        }

        if(param.type == 'array'){
            return `List<${this.getObjectType(param.items)}>`;
        }

        if(param.type == 'object' && param.allOf){
            let objType = this.getObjectType(param.allOf[0]);
            return objType;
        }
        if(param.type == 'object' && param.additionalProperties && param['x-dictionary-key']){
            let keyType = this.getObjectType(param['x-dictionary-key']);
            let valueType = this.getObjectType(param.additionalProperties);
            return `Map<String, ${valueType}>`;
        }
        if(param.type == 'object'){
            return `Map<String, String>`;
        }
        if(param.type){
            return this.parseType(param.type, param.format);
        }
        return param.name;
    }

    static getImportInfo(obj:ReferenceObject|ParameterObject|SchemaObject):ImportInfo|null{
        let schema = obj as SchemaObject;
        let refObj = obj as ReferenceObject;
        if('$ref' in obj){
            let ref = this.getRef(refObj.$ref);
            if(ref.type == 'object'){
                return new ImportInfo(
                    this.getRefClassName(refObj.$ref),
                    'model'
                );
            };
        }
        
        if(schema.type == 'array'){
            return this.getImportInfo(schema.items!);
        }
        if(schema.type == 'object' && schema.allOf){
            return this.getImportInfo(schema.allOf[0]);
        }
        if(schema.type == 'object' && schema.additionalProperties && schema['x-dictionary-key']){
            return this.getImportInfo(schema.additionalProperties);
        }
        return null;
    }

    static parseType(type:string, format:string){
        switch(type){
            case 'string':
                if(format == 'byte'){
                    return 'int';
                }
                return 'String';
            case 'integer':
            case 'number':
                if(format == 'int64'){
                    return 'String';
                }
                if(format == 'float'){
                    return 'double';
                }
                return 'int';
            case 'boolean':
                return 'bool';
        }
        return type;
    }

    static getRefClassName($ref:string):string{
        let fullClassName = $ref.split('/').pop()!;
        let className = fullClassName.split('.').pop()!;
        return className;
    }

    static getRef($ref:string):any{
        let path = $ref.split('/');
        path.shift();
        let res = this.doc;
        while(path.length){
            res = res[path.shift()!];
        }
        return res;
    }
}