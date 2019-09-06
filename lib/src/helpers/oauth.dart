import './http.dart';
import 'bungie_net_token.dart';

/// Bungie.net Oauth methods
class OAuth {
  static openOAuth(OAuthBrowser browser, String clientId,
      [String languageCode = "en", bool reauth = false]) {
    String url =
        "https://www.bungie.net/$languageCode/OAuth/Authorize?client_id=$clientId&response_type=code";
    if (reauth) {
      url = "$url&reauth=true";
    }
    browser.open(url);
  }

  static Future<BungieNetToken> getToken(
      HttpClient client, String clientId, String clientSecret, String code) {
    HttpClientConfig config = new HttpClientConfig("POST", "/App/OAuth/token/");
    config.bodyContentType = "application/x-www-form-urlencoded";
    config.body =
        "client_id=$clientId&client_secret=$clientSecret&code=$code&grant_type=authorization_code";
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return BungieNetToken.fromJson(response.mappedBody);
      }
      throw OAuthException(response.mappedBody['error'],
          response.mappedBody['error_description']);
    });
  }

  static Future<BungieNetToken> refreshToken(HttpClient client, String clientId,
      String clientSecret, String refreshToken) {
    HttpClientConfig config = new HttpClientConfig("POST", "/App/OAuth/token/");
    config.bodyContentType = "application/x-www-form-urlencoded";
    config.body =
        "client_id=$clientId&client_secret=$clientSecret&refresh_token=$refreshToken&grant_type=refresh_token";
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return BungieNetToken.fromJson(response.mappedBody);
      }
      throw OAuthException(response.mappedBody['error'],
          response.mappedBody['error_description']);
    });
  }
}

abstract class OAuthBrowser {
  open(String url);
}

class OAuthException implements Exception {
  final String error;
  final String errorDescription;
  OAuthException(this.error, [this.errorDescription]);
  @override
  String toString() {
    return "$error - $errorDescription";
  }
}
