import { ApiMethod } from "./ApiMethod";
import { PathItemObject, ParameterObject } from "openapi3-ts";
import { ImportInfo } from "./ImportInfo";
import {map, chain, each} from 'lodash';
import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";
export class ApiClass{
    static all:{[id:string]:ApiClass} = {};
    methods:ApiMethod[] = [];

    constructor(
        public className:string
    ){
        if(!this.className) this.className = 'Core';
        ApiClass.all[this.className] = this;
    }

    get filename():String{
        return camelcaseToUnderscore(this.className);
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
        let enumImports:ImportInfo[] = []; 
        each(this.methods, (method)=>{
            let params = method.parameters;
            each(method.parameters(), (param)=>{
                let importName = param.importTypeName();
                if(importName){
                    enumImports.push(new ImportInfo(importName, 'enums'));
                }
            });
        });
        let imports =  chain(returnImports)
            .concat(bodyImports as ImportInfo[])
            .concat(enumImports as ImportInfo[])
            .filter(Boolean)
            .uniqBy('className')
            .sortBy((o)=>`${o.type}/${o.filename()}`)
            .map((item:ImportInfo)=>{
                if(item.type == "api"){
                    return item.filename();
                }else{
                    return `../${item.type}/${item.filename()}`;
                }
            })
            .value();
        return imports;
    }
}