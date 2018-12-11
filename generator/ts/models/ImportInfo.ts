import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";

export class ImportInfo{
    constructor(
        public className:string,
        public type:string
    ){
    }

    filename(){
        return camelcaseToUnderscore(this.className);
    }
}