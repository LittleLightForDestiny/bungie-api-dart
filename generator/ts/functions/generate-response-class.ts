/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as shell from 'shelljs';
import * as mustache from 'mustache';
import { readFileSync, writeFileSync } from 'fs';
import { camelcaseToUnderscore } from '../utils/camelcase-to-underscore';
import { ResponseClass } from '../models/ResponseClass';

export function generateResponseClass(responseClass:ResponseClass){
  if(!shell.test('-d', '../lib/responses')){
    shell.mkdir('-p', '../lib/responses');
  }
  if(!shell.test('-d', '../lib/src/responses')){
    shell.mkdir('-p', '../lib/src/responses');
  }
  let template = readFileSync('templates/response-class.mustache').toString();
  let rendered = mustache.render(template, responseClass);
  let underscored = camelcaseToUnderscore(responseClass.className);
  writeFileSync(`../lib/src/responses/${underscored}.dart`, rendered);
  writeFileSync(`../lib/responses/${underscored}.dart`, `export '../src/responses/${underscored}.dart';`);
}

