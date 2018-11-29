import { ParameterObject, ReferenceObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
export class ModelProperty{
    constructor(
        public name:String,
        public info:ParameterObject|ReferenceObject
    ){
    }

    isNativeType():boolean{
        return ApiDocHelper.isNativeType(this.info);
    }

    typeName():String{
        return ApiDocHelper.getObjectType(this.info);
    }

    serializationFunction(){
        let fn = ApiDocHelper.getParseFunction(this.info);
        
        if(fn){
            return `${fn}(data['${this.name}'])`;
        }
        return `data['${this.name}']`;
    }

    propertyName():String{
        return this.name;
    }
}