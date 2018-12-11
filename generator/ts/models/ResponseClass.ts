import { ApiMethod } from "./ApiMethod";
import { ResponseObject, ReferenceObject, ParameterObject } from "openapi3-ts";
import { ModelProperty } from "./ModelProperty";
import {get, map, chain} from 'lodash';
import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";
import { ApiDocHelper } from "../utils/api-doc-helper";
import { ImportInfo } from "./ImportInfo";
export class ResponseClass{
    static all:{[id:string]:ResponseClass} = {};
    public className:string;
    constructor(
        public pathName:string,
        public data:ResponseObject
    ){
        this.className = pathName.split('.').pop()! + 'Response';
        ResponseClass.all[this.className] = this;
    }

    properties(){
        let properties = get(this.data, 'content["application/json"].schema.properties');
        if(!properties){
            return;
        }
        return map(properties, (property:ParameterObject|ReferenceObject, index:string)=>{
           return new ModelProperty(index, property);
        });
    }

    imports(){
        let properties = get(this.data, 'content["application/json"].schema.properties');
        if(!properties){
            return;
        }
        let filename = camelcaseToUnderscore(this.className);
        let imports = chain(properties)
            .map((prop)=>{
                return ApiDocHelper.getImportInfo(prop);
            })
            .filter(Boolean)
            .filter((importInfo:ImportInfo)=>importInfo.filename() != filename)
            .uniq()
            .value();
        return imports;
    }
}