import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_reward_pass_rank_seal_images.g.dart';

@JsonSerializable()
class DestinyRewardPassRankSealImages{	
	DestinyRewardPassRankSealImages();

	
	@JsonKey(name:'rewardPassRankSealImagePath')
	String? rewardPassRankSealImagePath;
	
	@JsonKey(name:'rewardPassRankSealPremiumImagePath')
	String? rewardPassRankSealPremiumImagePath;
	
	@JsonKey(name:'rewardPassRankSealPrestigeImagePath')
	String? rewardPassRankSealPrestigeImagePath;
	
	@JsonKey(name:'rewardPassRankSealPremiumPrestigeImagePath')
	String? rewardPassRankSealPremiumPrestigeImagePath;

	factory DestinyRewardPassRankSealImages.fromJson(Map<String, dynamic> json) {
		return _$DestinyRewardPassRankSealImagesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRewardPassRankSealImagesToJson(this);

	static Future<DestinyRewardPassRankSealImages> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRewardPassRankSealImages>((json)=>DestinyRewardPassRankSealImages.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}