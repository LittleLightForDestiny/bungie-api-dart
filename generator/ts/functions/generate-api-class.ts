/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as shell from 'shelljs';
import * as mustache from 'mustache';
import { ApiClass } from '../models/ApiClass';
import { readFileSync, writeFileSync } from 'fs';
import { camelcaseToUnderscore } from '../utils/camelcase-to-underscore';

export function generateApiClass(apiClass:ApiClass){
  if(!shell.test('-d', '../lib/api')){
    shell.mkdir('-p', '../lib/api');
  }
  let template = readFileSync('templates/api-class.mustache').toString();
  let rendered = mustache.render(template, apiClass);
  let underscored = camelcaseToUnderscore(apiClass.className);
  writeFileSync(`../lib/api/${underscored}.dart`, rendered);
}

