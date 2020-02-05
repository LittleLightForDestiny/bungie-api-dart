import { SchemaObject} from "openapi3-ts";
import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";

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

    get isBitMask():boolean{
        return this.data['x-enum-is-bitmask'] || false;
    }

    get filename():string{
        return camelcaseToUnderscore(this.className);
    }

    get description():string[]{
        if(this.data.description){
            return this.data.description.split('\r\n') || [];
        }
        return [];
    }

    values(){
        let enumValues = this.data['x-enum-values'];
        return enumValues.map((enumValue)=>{
            return {
                type:"int",
                name:enumValue.identifier,
                value:enumValue.numericValue,
                description: enumValue.description ? enumValue.description.split('\n') : []
            }
        });
    }
}