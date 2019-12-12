import { ApiMethod } from "./ApiMethod";
import { PathItemObject } from "openapi3-ts";
import { ImportInfo } from "./ImportInfo";
import {map, chain} from 'lodash';
export class ApiClass{
    static all:{[id:string]:ApiClass} = {};
    methods:ApiMethod[] = [];

    constructor(
        public className:string
    ){
        if(!this.className) this.className = 'Core';
        ApiClass.all[this.className] = this;
    }

    addMethod(name:string, url:string, pathInfo:PathItemObject){
        let method = new ApiMethod(name, url, pathInfo);
        this.methods.push(method);
    }

    imports(){
        let returnImports = map(this.methods, (method)=>{
            return new ImportInfo(method.returnType(), 'responses');
        });
        let bodyImports = map(this.methods, (method)=>{
            let body = method.requestBody();
            if(!body || body.isNativeType()) return null;
            return new ImportInfo(body.typeName(), 'models');
        });
        let imports =  chain(returnImports).concat(bodyImports as ImportInfo[])
            .filter(Boolean)
            .uniqBy('className')
            .sortBy((o)=>`${o.type}/${o.filename()}`)
            .value();
        return imports;
    }
}