import {upperFirst} from 'lodash';
import { ParameterObject, ReferenceObject, SchemaObject } from "openapi3-ts";
import { ApiDocHelper } from "../utils/api-doc-helper";
export class ApiMethodParameter{
    constructor(
        public info:ParameterObject|ReferenceObject
    ){
    }

    typeName():string{
        return ApiDocHelper.getObjectType(this.info);
    }

    importTypeName(param:ParameterObject|ReferenceObject=this.info):string|null{
        if('schema' in param){
            return this.importTypeName(param.schema as ParameterObject);
        }
        if('x-enum-reference' in param){
            return ApiDocHelper.getObjectType(param);
        }
        if((param as ParameterObject).type == 'array'){
            return ApiDocHelper.getObjectType((param as ParameterObject).items);
        }
        return null;
    }

    in():string{
        if('$ref' in this.info){
            let info = this.info as ReferenceObject;
            let ref = ApiDocHelper.getRef(info.$ref);
            return ref.in;
        }
        return (this.info as ParameterObject).in;
    }

    parameterParseToString(info:ParameterObject|ReferenceObject|SchemaObject = this.info){
        let string = this.parameterParseString(info);
        if(!string) return this.name();
        if(string.indexOf('.') > -1) return "'${"+string+"}'";
        return "'$"+string+"'";
    }

    parameterParseString(info:ParameterObject|ReferenceObject|SchemaObject = this.info):string|null{
        if("$ref" in info){
            let ref = ApiDocHelper.getRef(info.$ref);
            return this.parameterParseString(ref);
        }
        if(info.schema && "type" in info.schema && info.schema.type == "array"){
            var items = info.schema.items;
            return `${this.name()}.map((${ApiDocHelper.getObjectType(items)} ${this.name()})=>${this.parameterParseString(items)}).toList()`;
        }
        if(info['x-enum-reference'] || info.schema['x-enum-reference']){
            return `${this.name()}.value`;
        }
        return this.name();
    }

    name():string{
        return (this.info as ParameterObject).name;
    }
}