/**
 * This is a custom, hand-rolled generator for Dart typings for the Bungie.net API based on DIM's bungie-api-ts. 
 * It's meant for use in Little Light, but is free for anyone to use.
 */

import * as fs from "fs-extra";
import { writeFileSync } from "fs-extra";
export async function copyCustom() {
    fs.mkdirpSync('../lib/helpers');
    fs.mkdirpSync('../lib/src/helpers');
    var filenames = ['bungie_net_token', 'http', 'oauth'];
    for (var i in filenames) {
        var filename = filenames[i];
        fs.copyFileSync(`./dart-custom/helpers/${filename}.dart`, `../lib/src/helpers/${filename}.dart`);
        writeFileSync(`../lib/helpers/${filename}.dart`, `export '../src/helpers/${filename}.dart';`);
    }
}