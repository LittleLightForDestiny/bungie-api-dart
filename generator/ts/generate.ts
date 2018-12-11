/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as _ from 'underscore';
import { PathItemObject, ResponseObject, SchemaObject } from 'openapi3-ts';
import { ApiClass } from './models/ApiClass';
import { generateApiClass } from './functions/generate-api-class';
import { deleteAll } from './functions/delete-all';
import { ApiDocHelper } from './utils/api-doc-helper';
import { copyCustom } from './functions/copy-custom';
import { ResponseClass } from './models/ResponseClass';
import { generateResponseClass } from './functions/generate-response-class';
import { generateModelClass } from './functions/generate-model-class';
import { ModelClass } from './models/ModelClass';

let doc = ApiDocHelper.load();

_.each(doc.paths, (path: PathItemObject, index:string)=>{
  let [className, functionName] = path.summary!.split('.');
  let apiClass = ApiClass.all[className] || new ApiClass(className);
  apiClass.addMethod(functionName, index, path);
});

_.each(doc.components!.responses!, (response: ResponseObject, index:string)=>{
  new ResponseClass(index, response);
});

_.each(doc.components!.schemas!, (schema: SchemaObject, index:string)=>{
  if(schema.type == 'object'){
    new ModelClass(index, schema);
  }
});


deleteAll();
copyCustom();
_.each(ApiClass.all, (apiClass:ApiClass)=>{
  generateApiClass(apiClass);
});

_.each(ResponseClass.all, (responseClass:ResponseClass)=>{
  generateResponseClass(responseClass);
});

_.each(ModelClass.all, (modelClass:ModelClass)=>{
  generateModelClass(modelClass);
});