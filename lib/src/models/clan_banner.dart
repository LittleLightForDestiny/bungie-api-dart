import 'package:json_annotation/json_annotation.dart';


part 'clan_banner.g.dart';

@JsonSerializable()
class ClanBanner{
	
	ClanBanner();

	factory ClanBanner.fromJson(Map<String, dynamic> json) {
		return _$ClanBannerFromJson(json);
	}

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

	
	
	Map<String, dynamic> toJson() => _$ClanBannerToJson(this);
}