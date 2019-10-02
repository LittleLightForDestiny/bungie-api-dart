import { ParameterObject, ReferenceObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
import {camelCase} from 'lodash';
export class ModelProperty{
    constructor(
        public name:string,
        public info:ParameterObject|ReferenceObject,
    ){
    }

    isNativeType():boolean{
        return ApiDocHelper.isNativeType(this.info);
    }

    typeName():string{
        return ApiDocHelper.getObjectType(this.info);
    }

    deserializationFunction(){
        let fn = ApiDocHelper.getParseFunction(this.info, this.name, `data['${this.name}']`);
        
        if(fn){
            return `data['${this.name}'] != null ? ${fn} : null`;
        }
        return `data['${this.name}']`;
    }

    bodySerializeFunction(){
        let fn = ApiDocHelper.getSerializeFunction(this.info, camelCase(this.name));
        
        if(fn){
            return `config.${this.name} = ${fn.replace('this.', '')};`;
        }
        return `config.${this.name} = ${camelCase(this.name)};`;
    }

    serializationFunction(){
        let fn = ApiDocHelper.getSerializeFunction(this.info, camelCase(this.name));
        
        if(fn){
            return `data['${this.name}'] = this.${camelCase(this.name)} != null? ${fn} : null`;
        }
        return `data['${this.name}'] = this.${camelCase(this.name)}`;
    }

    propertyName():string{
        return camelCase(this.name);
    }

    description():string[]|null{
        var d = this._description();
        if(!d) return null;
        return d.split('\r\n');
    }

    _description():string|null{
        if('$ref' in this.info){
            let info = this.info as ReferenceObject;
            let ref = ApiDocHelper.getRef(info.$ref);
            if(ref.description) return ref.description;
        }

        if(this.info['description']){
            return this.info['description'];
        }

        return null;
    }
}