import { ParameterObject, ReferenceObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
export class ApiMethodParameter{
    constructor(
        public info:ParameterObject|ReferenceObject
    ){
    }

    typeName():String{
        return ApiDocHelper.getObjectType(this.info);
    }

    in():string{
        if(this.info.$ref){
            let ref = ApiDocHelper.getRef(this.info.$ref);
            return ref.in;
        }
        return (this.info as ParameterObject).in;
    }

    name():string{
        return (this.info as ParameterObject).name;
    }
}