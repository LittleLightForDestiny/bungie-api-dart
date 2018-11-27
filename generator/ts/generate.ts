/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in DIM, but is free for anyone to use.
 */

import * as fs from 'fs';
import * as _ from 'underscore';
import { OpenAPIObject, PathItemObject, SchemaObject } from 'openapi3-ts';
import { computeTypeMaps } from './type-index';
import { generateEnumClasses } from './generate-enum-classes';
import { generateModelClasses } from './generate-model-classes';

const doc = JSON.parse(fs.readFileSync('../api-src/openapi.json').toString()) as OpenAPIObject;

const pathPairs = _.pairs(doc.paths) as [string, PathItemObject][];

const pathPairsByTag = _.groupBy(pathPairs, ([path, desc]) => {
  return (desc.get || desc.post)!.tags![0];
});

delete pathPairsByTag[''];

const typeMaps = computeTypeMaps(pathPairsByTag, doc);

// const enumSchemas = _.filter((doc.components!).schemas!, (schema:SchemaObject)=>{return !!schema.enum});
const enumSchemas:{[id:string]:SchemaObject} = {};
const modelSchemas:{[id:string]:SchemaObject} = {};
_.each((doc.components!).schemas!, (schema, schemaName)=>{
  if(!!schema.enum){
    enumSchemas[schemaName] = schema;
  }else{
    modelSchemas[schemaName] = schema;
  }
});
generateEnumClasses(enumSchemas, doc);
// generateModelClasses(doc, typeMaps);



// _.each(componentsByFile, (components: DefInfo[], file: string) => {
//   generateInterfaceDefinitions(file, components, doc, componentByDef);
// });

// _.each(pathPairsByTag, (paths, tag) => {
//   generateServiceDefinition(tag, paths, doc, componentByDef);
// });

// _.each(pathPairsByTag, (paths, tag) => {
//   generateIndex(tag, doc);
// });