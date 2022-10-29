import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'clan_banner_decal.g.dart';

@JsonSerializable()
class ClanBannerDecal{	
	ClanBannerDecal();

	
	@JsonKey(name:'identifier')
	String? identifier;
	
	@JsonKey(name:'foregroundPath')
	String? foregroundPath;
	
	@JsonKey(name:'backgroundPath')
	String? backgroundPath;

	factory ClanBannerDecal.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerDecalFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ClanBannerDecalToJson(this);

	static Future<ClanBannerDecal> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ClanBannerDecal>((json)=>ClanBannerDecal.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}