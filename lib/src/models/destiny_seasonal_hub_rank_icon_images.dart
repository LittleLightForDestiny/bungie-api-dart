import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_seasonal_hub_rank_icon_images.g.dart';

@JsonSerializable()
class DestinySeasonalHubRankIconImages{	
	DestinySeasonalHubRankIconImages();

	
	@JsonKey(name:'seasonalHubRankIconUnearned')
	String? seasonalHubRankIconUnearned;
	
	@JsonKey(name:'seasonalHubRankIconEarning')
	String? seasonalHubRankIconEarning;
	
	@JsonKey(name:'seasonalHubRankIconActive')
	String? seasonalHubRankIconActive;

	factory DestinySeasonalHubRankIconImages.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonalHubRankIconImagesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonalHubRankIconImagesToJson(this);

	static Future<DestinySeasonalHubRankIconImages> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonalHubRankIconImages>((json)=>DestinySeasonalHubRankIconImages.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}