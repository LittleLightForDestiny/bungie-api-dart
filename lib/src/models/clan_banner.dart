import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'clan_banner.g.dart';

@JsonSerializable()
class ClanBanner{	
	ClanBanner();

	
	@JsonKey(name:'decalId')
	int? decalId;
	
	@JsonKey(name:'decalColorId')
	int? decalColorId;
	
	@JsonKey(name:'decalBackgroundColorId')
	int? decalBackgroundColorId;
	
	@JsonKey(name:'gonfalonId')
	int? gonfalonId;
	
	@JsonKey(name:'gonfalonColorId')
	int? gonfalonColorId;
	
	@JsonKey(name:'gonfalonDetailId')
	int? gonfalonDetailId;
	
	@JsonKey(name:'gonfalonDetailColorId')
	int? gonfalonDetailColorId;

	factory ClanBanner.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ClanBannerToJson(this);

	static Future<ClanBanner> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ClanBanner>((json)=>ClanBanner.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}