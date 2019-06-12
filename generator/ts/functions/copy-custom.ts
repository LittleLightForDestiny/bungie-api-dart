/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as fs from "fs-extra";
export async function copyCustom(){
    fs.mkdirpSync('../lib/helpers');
    fs.copyFileSync('./dart-custom/helpers/bungie_net_token.dart', '../lib/helpers/bungie_net_token.dart');
    fs.copyFileSync('./dart-custom/helpers/http.dart', '../lib/helpers/http.dart');
    fs.copyFileSync('./dart-custom/helpers/oauth.dart', '../lib/helpers/oauth.dart');
}