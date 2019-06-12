import 'package:json_annotation/json_annotation.dart';

part 'bungie_net_token.g.dart';

@JsonSerializable()
class BungieNetToken{
  @JsonKey(name:'access_token')
  String accessToken;
  
  @JsonKey(name:'expires_in')
  int expiresIn;

  @JsonKey(name:'refresh_token')
  String refreshToken;

  @JsonKey(name:'refresh_expires_in')
  int refreshExpiresIn;

  @JsonKey(name:'membership_id')
  String membershipId;
  BungieNetToken({
		this.accessToken,
    this.expiresIn,
    this.refreshToken,
    this.refreshExpiresIn,
    this.membershipId
  });
  factory BungieNetToken.fromJson(Map<String, dynamic> json) => _$BungieNetTokenFromJson(json);
	
	Map<String, dynamic> toJson() => _$BungieNetTokenToJson(this); 
}
