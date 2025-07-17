import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_season_pass_images.g.dart';

@JsonSerializable()
class DestinySeasonPassImages{	
	DestinySeasonPassImages();

	
	@JsonKey(name:'iconImagePath')
	String? iconImagePath;
	
	@JsonKey(name:'themeBackgroundImagePath')
	String? themeBackgroundImagePath;

	factory DestinySeasonPassImages.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonPassImagesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonPassImagesToJson(this);

	static Future<DestinySeasonPassImages> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonPassImages>((json)=>DestinySeasonPassImages.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}