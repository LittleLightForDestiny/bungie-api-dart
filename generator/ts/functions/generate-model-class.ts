/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as shell from 'shelljs';
import * as mustache from 'mustache';
import { readFileSync, writeFileSync } from 'fs';
import { camelcaseToUnderscore } from '../utils/camelcase-to-underscore';
import { ModelClass } from '../models/ModelClass';

export function generateModelClass(ModelClass:ModelClass){
  if(!shell.test('-d', '../lib/models')){
    shell.mkdir('-p', '../lib/models');
  }
  let template = readFileSync('templates/model-class.mustache').toString();
  let rendered = mustache.render(template, ModelClass);
  let underscored = camelcaseToUnderscore(ModelClass.className);
  writeFileSync(`../lib/models/${underscored}.dart`, rendered);
}

