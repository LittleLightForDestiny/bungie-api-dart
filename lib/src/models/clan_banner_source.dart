import 'package:json_annotation/json_annotation.dart';


part 'clan_banner_source.g.dart';

@JsonSerializable()
class ClanBannerSource{	
	ClanBannerSource();

	factory ClanBannerSource.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerSourceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ClanBannerSourceToJson(this);
}