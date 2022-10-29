import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'clan_banner_source.g.dart';

@JsonSerializable()
class ClanBannerSource{	
	ClanBannerSource();


	factory ClanBannerSource.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerSourceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ClanBannerSourceToJson(this);

	static Future<ClanBannerSource> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ClanBannerSource>((json)=>ClanBannerSource.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}