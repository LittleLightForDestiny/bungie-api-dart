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

    serializationFunction(){
        let fn = ApiDocHelper.getParseFunction(this.info);
        
        if(fn){
            return `${fn}(data['${this.name}'])`;
        }
        return `data['${this.name}']`;
    }

    propertyName():string{
        return camelCase(this.name);
    }
}