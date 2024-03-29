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
        public pathName:string,
        public data:SchemaObject
    ){
        this.className = pathName.split('.').pop()!;
        ModelClass.all[this.className] = this;
    }

    get groupName():string{
        if(this.pathName.indexOf('.') < 0){
            return "Core";
        }
        let group = this.pathName.split('.').shift();
        return group!;
    }

    hasProperties():boolean{
        return this.properties().length > 0;
    }

    properties():ModelProperty[]{
        let props = map(this.data.properties, (property:ParameterObject|ReferenceObject, index:string)=>{
           return new ModelProperty(index, property);
        });
        return props as any as ModelProperty[];
    }

    description(){
        if(!this.data.description) return null;
        return this.data.description.split('\r\n');
    }

    get filename():String{
        return camelcaseToUnderscore(this.className);
    }

    imports(){
        let filename = camelcaseToUnderscore(this.className);
        let imports = chain(this.data.properties)
            .map((prop)=>{
                return ApiDocHelper.getImportInfo(prop);
            })
            .filter(Boolean)
            .filter((importInfo:ImportInfo)=>importInfo.filename() != filename)
            .uniqBy((item:any)=>item.filename())
            .map((item:ImportInfo)=>{
                if(item.type == "models"){
                    return item.filename();
                }else{
                    return `../${item.type}/${item.filename()}`;
                }
            })
            .value();
        return imports;
    }
}