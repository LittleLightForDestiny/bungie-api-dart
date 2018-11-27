import * as _ from 'underscore';
import { DefInfo, getRef, resolveSchemaType } from './util';
import { OpenAPIObject, SchemaObject } from 'openapi3-ts';
import { generateHeader, generateImports, docComment, indent, addImport, writeOutFile } from './generate-common';

export function generateEnums(file: string, components: DefInfo[], doc: OpenAPIObject, componentByDef: {[def: string]: DefInfo }) {
  const importFiles: { [filename: string]: Set<string> } = {};

  const componentDefinitions = components.map((component) => generateComponentDefinition(component, doc, componentByDef, importFiles));

  const filename = `../lib/enums/${file}`;

  const imports = generateImports(filename, importFiles);

  const definition = _.compact([generateHeader(doc), imports, null, ...componentDefinitions]).join('\n\n') + '\n';

  writeOutFile(filename, definition);
}

function generateComponentDefinition(defInfo: DefInfo, doc: OpenAPIObject, componentByDef: {[def: string]: DefInfo }, importFiles: { [filename: string]: Set<string> }) {
  const component = getRef(doc, defInfo.def);
  if (!component) {
    return undefined;
  }

  if (component.enum) {
    return generateEnum(defInfo, component);
  }else{
    return undefined;
  }
}

function generateEnum(defInfo: DefInfo, component: SchemaObject) {
  const values = component['x-enum-values'].map((value) => {
    const doc = value.description ? docComment(value.description) + '\n' : '';
    return `${doc} static const int ${value.identifier} = ${value.numericValue};`;
  }).join('\n');

  return `class ${defInfo.interfaceName} {
${indent(values, 1)}
}`;
}
