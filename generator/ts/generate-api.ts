import { OpenAPIObject, PathItemObject, ParameterObject, ReferenceObject, RequestBodyObject } from 'openapi3-ts';
import { lastPart, lcFirst, resolveSchemaType, DefInfo, isReferenceObject, isRequestBodyObject, getRef } from './util';
import { generateHeader, generateImports, docComment, indent, addImport, writeOutFile } from './generate-common';

const httpClientType = `import 'dart:async';
import '../http.dart';`;

export function generateServiceDefinition(tag: string, paths: [string, PathItemObject][], doc: OpenAPIObject, componentByDef: {[def: string]: DefInfo }): void {
  const importFiles: { [filename: string]: Set<string> } = {};

  const pathDefinitions = paths.map(([path, pathDef]) => generatePathDefinition(path, pathDef, doc, componentByDef, importFiles));

  const filename = `../lib/${tag.toLowerCase()}/api.dart`;

  const imports = generateImports(filename, importFiles);

  const definition = [generateHeader(doc), httpClientType, imports, ...pathDefinitions].join('\n\n') + '\n';

  writeOutFile(filename, definition);
}

function generatePathDefinition(path: string, pathDef: PathItemObject, doc: OpenAPIObject, componentByDef: {[def: string]: DefInfo }, importFiles: { [filename: string]: Set<string> }) {
  const server = doc.servers![0].url;
  const interfaceName = lastPart(pathDef.summary!);
  const functionName = lcFirst(interfaceName);

  const method = pathDef.get ? 'GET' : 'POST';
  const methodDef = pathDef.get || pathDef.post!;
  const params = (methodDef.parameters || []) as ParameterObject[];

  const queryParameterNames = params.filter((param) => param.in === 'query').map((param) => param.name);

  const parameterArgs = ['HttpClient http'];
  let interfaceDefinition = '';
  if (params.length) {
    interfaceDefinition = generateInterfaceSchema(interfaceName + 'Params', params, doc, componentByDef, importFiles) + '\n\n';
    parameterArgs.push(`${interfaceName}Params params`);
  }

  if (methodDef.requestBody) {
    if (isRequestBodyObject(methodDef.requestBody)) {
      const schema = methodDef.requestBody.content['application/json'].schema!;

      const paramType = resolveSchemaType(schema, doc);
      addImport(doc, schema, componentByDef, importFiles);
      const docString = methodDef.requestBody.description ? docComment(methodDef.requestBody.description) + '\n' : '';
      parameterArgs.push(`${docString}${paramType} body${methodDef.requestBody.required ? '' : ''}`);
    } else if (isReferenceObject(methodDef.requestBody)) {
      throw new Error("didn't expect this");
    }
  }

  // tslint:disable-next-line:no-invalid-template-strings
  const templatizedPath = path.includes("{") ? `"${server}${path.replace(/{/g, "${params.")}"` : `"${server}${path}"`;

  let paramsObject = "";
  if (queryParameterNames.length) {
    const paramInitializers = queryParameterNames.map((p) => {
      const param = params.find((pa) => pa.name === p)!;
      const paramType = resolveSchemaType(param.schema!, doc);
      if (paramType.endsWith('[]')) {
        if (!param.required) {
          return `'${p}': params.${p} ? params.${p}.join(',') : undefined`;
        }
        return `'${p}': params.${p}.join(',')`;
      }

      return `'${p}': params.${p}`;
    });

    paramsObject = `{
${indent(paramInitializers.join(',\n'), 3)}
    }`;
  }

  let requestBodyParam = '';
  if (methodDef.requestBody && isRequestBodyObject(methodDef.requestBody)) {
    requestBodyParam = `body`;
  }

  const returnValue = resolveSchemaType(methodDef.responses['200'], doc);
  addImport(doc, methodDef.responses['200'], componentByDef, importFiles);
  return `${interfaceDefinition}${docComment(methodDef.description!)}
  Future<${returnValue}> ${functionName}(${parameterArgs.join(', ')}) {
  return http.request(new HttpClientConfig(
    '${method}',
    ${templatizedPath},
    ${paramsObject || 'null'},
    ${requestBodyParam || 'null'}
    ));
}`;
}

function generateInterfaceSchema(interfaceName: string, params: ParameterObject[], doc: OpenAPIObject, componentByDef: {[def: string]: DefInfo }, importFiles: { [filename: string]: Set<string> }) {
  const parameterArgs = params.map((param) => {
    // TODO: in general, need something that returns a type object
    const paramType = resolveSchemaType(param.schema!, doc);
    addImport(doc, param.schema!, componentByDef, importFiles);
    const docString = param.description ? docComment(param.description) + '\n' : '';
    return `${docString}${paramType} ${param.name}${param.required ? '' : ''};`;
  });

  return `abstract class ${interfaceName} {
${indent(parameterArgs.join('\n'), 1)}
}`;
}
