import { OpenAPIObject } from 'openapi3-ts';
import { generateHeader, writeOutFile } from './generate-common';

export function generateIndex(tag: string, doc: OpenAPIObject) {

  const filename = `../lib/${tag.toLocaleLowerCase()}.dart`;

  const imports = `export './common.dart';${tag !== 'Destiny2' ? "\nexport './platform.dart';" : ''}
export './http.dart';
export './${tag.toLowerCase()}/interfaces.dart';
export './${tag.toLowerCase()}/api.dart';`;

  const definition = [generateHeader(doc), imports].join('\n\n') + '\n';

  writeOutFile(filename, definition);
}

export function generateSuperIndex(tags: string[], doc: OpenAPIObject) {

  const filename = `../lib/bungie-api.dart`;

  const imports = tags.map((tag) => `import './${tag.toLowerCase()}' as ${tag}Import;`).join('\n');
  const exportStatements = tags.map((tag) => `export const ${tag} = ${tag}Import;`).join('\n');

  const definition = [generateHeader(doc), imports, exportStatements].join('\n\n') + '\n';

  writeOutFile(filename, definition);
}