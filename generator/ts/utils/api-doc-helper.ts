import { OpenAPIObject, ReferenceObject, ParameterObject, SchemaObject } from "openapi3-ts";
import { readFileSync } from "fs";
import { ImportInfo } from "../models/ImportInfo";

export class ApiDocHelper{
    static doc:OpenAPIObject;
    static load():OpenAPIObject{
        let file = readFileSync('../api-src/openapi.json').toString();
        this.doc = JSON.parse(file);
        return this.doc;
    }

    static getParseFunction(obj:ReferenceObject|ParameterObject|SchemaObject):string|null{
        if(obj.$ref){
            let ref = this.getRef(obj.$ref);
            if(ref.type == 'object'){
                return `${this.getRefClassName(obj.$ref)}.fromMap`;
            }
        }
        let param:ParameterObject = obj as ParameterObject;
        if(param.schema){
            return this.getParseFunction(param.schema);
        }
        if(param.type == 'array' && param.items && param.items.$ref){
            let ref = this.getRef(param.items.$ref);
            if(ref.type == 'object'){
                return `${this.getObjectType(param.items)}.fromList`;
            }
        }
        if(param.type == 'array' && param.allOf){
            let ref = this.getRef(param.allOf[0].$ref);
            if(ref.type == 'object'){
                return `${this.getObjectType(param.allOf[0])}.fromList`;
            }
        }
        return null;
    }

    static getSerializeFunction(obj:ReferenceObject|ParameterObject|SchemaObject, name:String):string|null{
        if(obj.$ref){
            let ref = this.getRef(obj.$ref);
            if(ref.type == 'object'){
                return `${name}.toMap()`;
            }
        }
        let param:ParameterObject = obj as ParameterObject;
        if(param.schema){
            return this.getSerializeFunction(param.schema, name);
        }
        if(param.type == 'array' && param.items && param.items.$ref){
            let ref = this.getRef(param.items.$ref);
            if(ref.type == 'object'){
                return `${name}.map((item)=>item.toMap())`;
            }
        }
        if(param.type == 'array' && param.allOf){
            let ref = this.getRef(param.allOf[0].$ref);
            if(ref.type == 'object'){
                return `${name}.map((item)=>item.toMap())`;
            }
        }
        return null;
    }

    static isNativeType(obj:ReferenceObject|ParameterObject|SchemaObject):boolean{
        let param:ParameterObject = obj as ParameterObject;

        if(obj.$ref){
            let ref = this.getRef(obj.$ref);
            if(ref.type == 'object'){
                return false;
            }else{
                return this.isNativeType(ref);
            }
        }
        
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
        let param:ParameterObject = obj as ParameterObject;

        if(obj.$ref){
            let ref = this.getRef(obj.$ref);
            if(ref.type == 'object'){
                return this.getRefClassName(obj.$ref);
            }else{
                return this.getObjectType(ref);
            }
        }
        
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
            let keyType = this.getObjectType(param.additionalProperties);
            let valueType = this.getObjectType(param.additionalProperties);
            return `Map<${keyType}, dynamic>`;
        }
        if(param.type == 'object'){
            return `Map<String, String>`;
        }
        if(param.type){
            return this.parseType(param.type);
        }
        return param.name;
    }

    static getImportInfo(obj:ReferenceObject|ParameterObject|SchemaObject):ImportInfo|null{
        let schema = obj as SchemaObject;

        if(obj.$ref){
            let ref = this.getRef(obj.$ref);
            if(ref.type == 'object'){
                return new ImportInfo(
                    this.getRefClassName(obj.$ref),
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

    static parseType(type:string){
        switch(type){
            case 'string':
                return 'String';
            case 'integer':
            case 'number':
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