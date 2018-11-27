import { DefInfo } from "./util";
import { OpenAPIObject, SchemaObject } from "openapi3-ts";
import { generateHeader, writeOutFile, docComment, indent } from "./generate-common";
import _ = require("underscore");

export function generateEnumClasses(components: {[id:string]:SchemaObject}, doc: OpenAPIObject) {
    const importFiles: { [filename: string]: Set<string> } = {};
    const componentDefinitions = _.map(components, (component, className)=>generateEnumClass(component, className));

    const filename = `../lib/enums.dart`;

    const definition = _.compact([generateHeader(doc), ...componentDefinitions]).join('\n\n') + '\n';

    writeOutFile(filename, definition);
}

export function generateEnumClass(component:SchemaObject, schemaName:string) {
    const values = component['x-enum-values'].map((value) => {
        const doc = value.description ? docComment(value.description) + '\n' : '';
        return `${doc} static const int ${value.identifier} = ${value.numericValue};`;
    }).join('\n');
    const className = getClassName(schemaName)
    return `class ${className} {\n${indent(values, 1)}\n}`;
}

export function getClassName(str:string){
    let splitted = str.split('.');
    return splitted[splitted.length - 1];
}