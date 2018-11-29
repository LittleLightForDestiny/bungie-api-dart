import { PathItemObject, OperationObject } from "openapi3-ts";
import {camelCase, map, get} from 'lodash';
import { ApiMethodParameter } from "./ApiMethodParameter";
import { ModelProperty } from "./ModelProperty";
export class ApiMethod{
    constructor(
        public methodName:string,
        public methodUrl:string,
        public pathInfo:PathItemObject
    ){
        this.methodName = camelCase(methodName);
    }

    parameters(){
        let params = map(this.operation().parameters, (obj)=>new ApiMethodParameter(obj));
        return params;
    }

    queryParameters(){
        return this.parameters().filter((param)=>{
            return param.in() == "query";
        });
    }

    url(){
        return this.methodUrl.replace('{', '${');
    }

    requestBody():ModelProperty|null{
        let body = this.operation().requestBody;
        if(!body) return null;
        let schema = get(body, 'content["application/json"].schema');
        return new ModelProperty('body', schema);
    }

    returnType():String{
        let type = this.operation().responses[200].$ref;
        let fullClassName = type.split('/').pop();
        let className = fullClassName.split('.').pop();
        return `${className}Response`;
    }

    method(){
        if(this.pathInfo.get){
            return 'GET';
        }
        if(this.pathInfo.post){
            return 'POST';
        }
    }

    operation(){
        let operation:OperationObject = this.pathInfo.get || this.pathInfo.post || this.pathInfo.put || this.pathInfo.delete || this.pathInfo.patch!;
        return operation;
    }
}