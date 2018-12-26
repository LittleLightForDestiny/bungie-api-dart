import { SchemaObject} from "openapi3-ts";
import { camelCase } from "lodash";

export class EnumClass{
    static all:{[id:string]:EnumClass} = {};
    public className:string;
    constructor(
        public pathName:string,
        public data:SchemaObject
    ){
        this.className = pathName.split('.').pop()!;
        EnumClass.all[this.className] = this;
    }

    values(){
        let enumValues = this.data['x-enum-values'];
        return enumValues.map((enumValue)=>{
            return {
                type:"int",
                name:camelCase(enumValue.identifier),
                value:enumValue.numericValue
            }
        });
    }
}