import { ApiMethod } from "./ApiMethod";
import { ResponseObject, ReferenceObject, ParameterObject } from "openapi3-ts";
import { ModelProperty } from "./ModelProperty";
import { get, map, chain, upperFirst } from 'lodash';
import { camelcaseToUnderscore } from "../utils/camelcase-to-underscore";
import { ApiDocHelper } from "../utils/api-doc-helper";
import { ImportInfo } from "./ImportInfo";
export class ResponseClass {
    static all: { [id: string]: ResponseClass } = {};
    public className: string;
    constructor(
        public pathName: string,
        public data: ResponseObject
    ) {
        const className = upperFirst(pathName.split('.').pop()!);
        this.className = className + 'Response';
        ResponseClass.all[this.className] = this;
    }

    responseClassName(){
        const responseProp = this.properties.apply(this)?.filter((p)=> p.name == "Response")[0];
        console.log(responseProp);
        return responseProp?.typeName() || "";
    }

    properties() {
        let properties = get(this.data, 'content["application/json"].schema.properties');
        if (!properties) {
            return;
        }
        return map(properties, (property: ParameterObject | ReferenceObject, index: string) => {
            return new ModelProperty(index, property);
        });
    }

    get groupName(): string {
        if (this.pathName.indexOf('.') < 0) {
            return "Core";
        }
        let group = this.pathName.split('.').shift();
        return group!;
    }

    get filename(): String {
        return camelcaseToUnderscore(this.className);
    }

    description() {
        if (!this.data.description) return null;
        return this.data.description.split('\r\n');
    }

    imports() {
        let properties = get(this.data, 'content["application/json"].schema.properties');
        if (!properties) {
            return;
        }
        let filename = camelcaseToUnderscore(this.className);
        let imports = chain(properties)
            .map((prop) => {
                return ApiDocHelper.getImportInfo(prop);
            })
            .filter(Boolean)
            .filter((importInfo: ImportInfo) => importInfo.filename() != filename)
            .uniqBy((item: ImportInfo) => item.filename())
            .map((item: ImportInfo) => {
                if (item.type == "responses") {
                    return item.filename();
                } else {
                    return `../${item.type}/${item.filename()}`;
                }
            })
            .value();
        return imports;
    }
}