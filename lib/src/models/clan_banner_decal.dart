import 'package:json_annotation/json_annotation.dart';


part 'clan_banner_decal.g.dart';

@JsonSerializable()
class ClanBannerDecal{	
	ClanBannerDecal();

	factory ClanBannerDecal.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerDecalFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ClanBannerDecalToJson(this);
	
	@JsonKey(name:'identifier')
	String? identifier;
	
	@JsonKey(name:'foregroundPath')
	String? foregroundPath;
	
	@JsonKey(name:'backgroundPath')
	String? backgroundPath;
}