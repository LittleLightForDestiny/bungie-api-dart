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
import { EnumClass } from './models/EnumClass';
import { generateEnumClass } from './functions/generate-enum-class';
import { writeFileSync } from 'fs';

let doc = ApiDocHelper.load();

_.each(doc.paths, (path: PathItemObject, index:string)=>{
  let [className, functionName] = path.summary!.split('.');
  let urlPath = index.split('/').filter((i)=>i.length > 0);
  className = className || urlPath[0];
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
  if(schema.enum){
    new EnumClass(index, schema);
  }
});

let groups:{[id:string]:Set<String>} = {};

function addToGroup(groupName:string, exportPath:string){
  groupName = groupName.toLowerCase();
  let group = groups[groupName];
  if(!group){
    for(let i in groups){
      if(i.indexOf(groupName) == 0){
        group = groups[i];
        break;
      }
    }
  }
  if(!group){
    group = groups[groupName] = new Set<String>();
  }
  group.add(exportPath);
}

deleteAll();
copyCustom();
_.each(ApiClass.all, (apiClass:ApiClass)=>{
  generateApiClass(apiClass);
  addToGroup(apiClass.className, `src/api/${apiClass.filename}.dart`);
});

_.each(ResponseClass.all, (responseClass:ResponseClass)=>{
  generateResponseClass(responseClass);
  addToGroup(responseClass.groupName, `src/responses/${responseClass.filename}.dart`);
});

_.each(ModelClass.all, (modelClass:ModelClass)=>{
  generateModelClass(modelClass);
  addToGroup(modelClass.groupName, `src/models/${modelClass.filename}.dart`);
});

_.each(EnumClass.all, (enumClass:EnumClass)=>{
  generateEnumClass(enumClass);
  addToGroup(enumClass.groupName, `src/enums/${enumClass.filename}.dart`);
})

_.each(groups, (group:Set<String>, groupName:String)=>{
  let fileExports = Array.from(group).map((path)=>`export '${path}';`);
  writeFileSync(`../lib/${groupName}.dart`, fileExports.join('\n'));
});


