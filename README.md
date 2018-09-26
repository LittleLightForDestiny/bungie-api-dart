# Bungie API Dart support

This project implements Dart definitions and API helpers for the [Bungie.net API](https://github.com/Bungie-net/api). It's based on [bungie-api-ts](https://github.com/DestinyItemManager/bungie-api-ts) that is meant for use in [Destiny Item Manager] (http://destinyitemmanager.com), but should be general enough to use in any project. The code is completely generated from Bungie's documentation - I considered using something like Swagger Codegen, but instead opted for a custom generator so we could make the result as nice as possible.

# Install
add this to your dependencies block in pubspec.yaml
```
dependencies:
  bungie_api_dart:
    git: https://github.com/marquesinijatinha/bungie-api-dart
```

# Interfaces and Enums

There are definitions for every type defined in the Bungie.net services. See [their documentation](https://bungie-net.github.io/multi/) for a list - the interface names are the last part of the full name (for example, `Destiny.Definitions.DestinyVendorActionDefinition` becomes `DestinyVendorActionDefinition`). There are a few exceptions, like `SingleComponentResponseOfDestinyInventoryComponent`, which have been mapped into nicer forms like `SingleComponentResponse<DestinyInventoryComponent>`, and the server responses, which are now `ServerResponse<T>` instead of something like `DestinyCharacterResponse`.

# API Helpers

In addition to the types, there are also simple helper functions for each API endpoint. They define the inputs and outputs to that endpoint, and will call a user-provided function with HTTP request info that you can then use to make an HTTP request. This pattern was used so the API helpers could provide full type information. These helpers are not a full API client - they assist in building one. An example:

```dart
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:bungie_api_dart/http.dart' as httpInterface;
import 'package:bungie_api_dart/destiny2/api.dart' as destiny2;
import 'package:bungie_api_dart/common.dart';
import 'package:bungie_api_dart/destiny2/interfaces.dart';

class BungieApiService{
  Future<ServerResponse<DestinyManifest>> getManifest(){
    return destiny2.getDestinyManifest(new HttpClient());
  }
}

class HttpClient implements httpInterface.HttpClient{
  static const API_KEY = "your_key";
  @override
    Future<Object> request(httpInterface.HttpClientConfig config) {
      if(config.method == 'GET'){
        return http.get(config.url, headers: {'X-API-Key': API_KEY});
      }
      return http.post(config.url, headers: {'X-API-Key': API_KEY});
    }
}
```

# Build

```
./install.sh && ./build.sh
```
