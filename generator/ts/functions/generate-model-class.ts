/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as shell from 'shelljs';
import * as mustache from 'mustache';
import { readFileSync, writeFileSync } from 'fs-extra';
import { ModelClass } from '../models/ModelClass';

export function generateModelClass(model:ModelClass){
  if(!shell.test('-d', '../lib/models')){
    shell.mkdir('-p', '../lib/models');
  }
  let template = readFileSync('templates/model-class.mustache').toString();
  let rendered = mustache.render(template, model);
  writeFileSync(`../lib/models/${model.filename}.dart`, rendered);
}

