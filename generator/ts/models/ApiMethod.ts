import { PathItemObject, OperationObject, RequestBodyObject, ContentObject } from "openapi3-ts";
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
        return this.methodUrl.split('{').join('${');
    }

    description():string{
        return this.pathInfo.description!;
    }

    requestBody():ModelProperty|null{
        let operation = this.operation();
        let content:ContentObject = get(operation, 'requestBody.content');
        if(!content) return null;
        let schema;
        for(var i in content){
            schema = content[i];
        }
        return new ModelProperty('body', schema);
    }

    requestBodyContentType():String{
        let operation = this.operation();
        let content:ContentObject = get(operation, 'requestBody.content');
        if(!content) return "null";
        let contentType;
        for(var i in content){
            contentType = i;
        }
        return `'${contentType}'`;
    }

    returnType():string{
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

    operation():OperationObject{
        let operation:OperationObject = this.pathInfo.get || this.pathInfo.post || this.pathInfo.put || this.pathInfo.delete || this.pathInfo.patch!;
        return operation;
    }
}