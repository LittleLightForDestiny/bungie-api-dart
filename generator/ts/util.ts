import { SchemaObject, ReferenceObject, OpenAPIObject, RequestBodyObject } from 'openapi3-ts';
import * as _ from 'underscore';

export interface DefInfo {
  def: string;
  tags: string[];
  filename: string;
  interfaceName: string;
}

export function resolveSchemaType(schema: SchemaObject | ReferenceObject, doc: OpenAPIObject): string {
  if (isReferenceObject(schema)) {
    return interfaceName(schema.$ref, doc);
  } else {
    return typeMapping(schema, doc);
  }
}

export function isDefaultType(type:string):boolean{
  switch(type){
    case "int":
    case "double":
    case "String":
    case "bool":
    case "integer":
    case "Object":
      return true;
  }
  return false;
}

export function typeMapping(schema: SchemaObject, doc: OpenAPIObject): string {
  switch (schema.type) {
    case "number":
      return ['double', 'float'].indexOf(schema.format || 'int') > -1 ? 'double' : 'int';
    case "string":
      return schema.format === 'byte' ? 'int' : 'String';
    case "boolean":
      return 'bool';
    case "integer":
      return schema.format === 'int64' ? 'String' : 'int';
    case "array":
      return 'List<' + resolveSchemaType(schema.items!, doc) + '>';
    case "object":
      if (schema.allOf) {
        return resolveSchemaType(schema.allOf[0], doc);
      } else if (schema.additionalProperties && schema['x-dictionary-key']) {
        const keySchema: SchemaObject | ReferenceObject = schema['x-dictionary-key'];
        const key = isReferenceObject(keySchema) ? 'int' : resolveSchemaType(keySchema, doc);
        let val = resolveSchemaType(schema.additionalProperties, doc);
        if(val == 'object'){
          val = 'Object';
        }
        return `Map<${key}, ${val}>`;
      }
  }

  return schema.type!;
}

function convertType(type:string){
  switch (type) {
    case "number":
      return "int";
    case "string":
      return "String";
  }
  return type;
}

export function getReferencedTypes(schema: SchemaObject | ReferenceObject): string | undefined {
  if (isReferenceObject(schema)) {
    return schema.$ref;
  } else if (schema.items) {
    return getReferencedTypes(schema.items!);
  } else if (schema.allOf) {
    return getReferencedTypes(schema.allOf[0]);
  } else if (schema.additionalProperties) {
    return getReferencedTypes(schema.additionalProperties);
  }
}

export function lcFirst(name: string): string {
  return name[0].toLowerCase() + name.substring(1);
}

export function lastPart(name: string): string {
  return _.last(name.split(/[\.\/]/))!;
}

export function getRef(doc: OpenAPIObject, ref: string): SchemaObject | undefined {
  const path = ref.replace('#/', '').split('/');
  let result = doc;
  let pathSegment = path.shift();
  while (pathSegment) {
    result = result[pathSegment];
    pathSegment = path.shift();
  }
  if (!result) {
    return undefined;
  }
  if (result.content) {
    return result.content['application/json'].schema;
  } else {
    return result;
  }
}

export function interfaceName(componentPath: string, doc: OpenAPIObject) {
  const name = lastPart(componentPath);
  const component = getRef(doc, componentPath);
  if (!component) {
    return 'any';
  }
  if(component.enum){
    return 'int';
  }

  const singleResponse = name.match(/SingleComponentResponseOf(.*)/);
  if (singleResponse) {
    return `SingleComponentResponse<${convertType(singleResponse[1])}>`;
  }

  const dictionaryResponse = name.match(/DictionaryComponentResponseOfu?int(?:64|32)And(.*)/);
  if (dictionaryResponse) {
    return `DictionaryComponentResponse<${convertType(dictionaryResponse[1])}>`;
  }

  if (componentPath.includes('/responses/')) {
    const property = component.properties!.Response;
    if (property) {
      const paramType = resolveSchemaType(property, doc);
      return `ServerResponse<${paramType}>`;
    }
  }
  return name;
}

export function isRequestBodyObject(requestBody: RequestBodyObject | ReferenceObject): requestBody is RequestBodyObject {
  return (requestBody as RequestBodyObject).content !== undefined;
}

export function isReferenceObject(schema: SchemaObject | ReferenceObject): schema is ReferenceObject {
  return (schema as ReferenceObject).$ref !== undefined;
}
