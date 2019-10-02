import { ParameterObject, ReferenceObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
export class ApiMethodParameter{
    constructor(
        public info:ParameterObject|ReferenceObject
    ){
    }

    typeName():string{
        return ApiDocHelper.getObjectType(this.info);
    }


    in():string{
        if('$ref' in this.info){
            let info = this.info as ReferenceObject;
            let ref = ApiDocHelper.getRef(info.$ref);
            return ref.in;
        }
        return (this.info as ParameterObject).in;
    }

    name():string{
        return (this.info as ParameterObject).name;
    }
}