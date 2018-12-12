/**
 * Bungie.net Oauth methods
 */
import '../helpers/http.dart';

class OAuth{
  static openOAuth(OAuthBrowser browser, String clientId, [String languageCode = "en", bool reauth=false]){
    String url = "https://www.bungie.net/$languageCode/OAuth/Authorize?client_id=$clientId&response_type=code";
    if(reauth){
      url = "$url&reauth=true";
    }
    browser.open(url);
  }
  static Future<BungieNetToken> getToken(HttpClient client, String clientId, String clientSecret, String code){
    HttpClientConfig config = new HttpClientConfig("POST", "/App/OAuth/token/", null);
    config.bodyContentType = "application/x-www-form-urlencoded";
    config.body = "client_id=$clientId&client_secret=$clientSecret&code=$code&grant_type=authorization_code";
    return client.request(config).then((response){
      return BungieNetToken.fromMap(response);
    });
  }
  static Future<BungieNetToken> refreshToken(HttpClient client, String clientId, String clientSecret, String refreshToken){
    HttpClientConfig config = new HttpClientConfig("POST", "/App/OAuth/token/", null);
    config.bodyContentType = "application/x-www-form-urlencoded";
    config.body = "client_id=$clientId&client_secret=$clientSecret&refresh_token=$refreshToken&grant_type=refresh_token";
    return client.request(config).then((response){
      return BungieNetToken.fromMap(response);
    });
  }
}

abstract class OAuthBrowser{
  open(String url);
}

class BungieNetToken{
  String accessToken;
  int expiresIn;
  String refreshToken;
  int refreshExpiresIn;
  String membershipId;

  
  BungieNetToken(
		this.accessToken,
    this.expiresIn,
    this.refreshToken,
    this.refreshExpiresIn,
    this.membershipId
	);

  static BungieNetToken fromMap(Map<String, dynamic> data){
    return BungieNetToken(
      data["access_token"],
      data["expires_in"],
      data["refresh_token"],
      data["refresh_expires_in"],
      data["membership_id"]
    );
  }
}