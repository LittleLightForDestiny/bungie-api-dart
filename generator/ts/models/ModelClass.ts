import { SchemaObject, ReferenceObject, ParameterObject } from "openapi3-ts";
import { ModelProperty } from "./ModelProperty";
import {chain, map} from 'lodash';
import { ApiDocHelper } from "../utils/api-doc-helper";
import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";
import { ImportInfo } from "./ImportInfo";
export class ModelClass{
    static all:{[id:string]:ModelClass} = {};
    public className:string;
    constructor(
        public pathName:String,
        public data:SchemaObject
    ){
        this.className = pathName.split('.').pop()!;
        ModelClass.all[this.className] = this;
    }

    properties():ModelProperty[]{
        let props = map(this.data.properties, (property:ParameterObject|ReferenceObject, index:String)=>{
           return new ModelProperty(index, property);
        });
        return props as any as ModelProperty[];
    }

    imports(){
        let filename = camelcaseToUnderscore(this.className);
        let imports = chain(this.data.properties)
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