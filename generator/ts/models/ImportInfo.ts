import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";

export class ImportInfo{
    constructor(
        public className:String,
        public type:String
    ){
    }

    filename(){
        return camelcaseToUnderscore(this.className);
    }
}