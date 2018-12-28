import { ParameterObject, ReferenceObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
import {camelCase} from 'lodash';
export class ModelProperty{
    constructor(
        public name:string,
        public info:ParameterObject|ReferenceObject
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

    serializationFunction(){
        let fn = ApiDocHelper.getSerializeFunction(this.info, camelCase(this.name));
        
        if(fn){
            return `data['${this.name}'] = ${fn}`;
        }
        return `data['${this.name}'] = this.${camelCase(this.name)}`;
    }

    propertyName():string{
        return camelCase(this.name);
    }

    description():string{
        if(this.info.$ref){
            let ref = ApiDocHelper.getRef(this.info.$ref);
            if(ref.description) return ref.description;
        }

        if(this.info['description']){
            return this.info['description'];
        }

        return "";
    }
}