import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_social_commendations_component.g.dart';

@JsonSerializable()
class DestinySocialCommendationsComponent{	
	DestinySocialCommendationsComponent();

	
	@JsonKey(name:'totalScore')
	int? totalScore;
	
	/// The percentage for each commendation type out of total received
	@JsonKey(name:'commendationNodePercentagesByHash')
	Map<String, int>? commendationNodePercentagesByHash;
	
	@JsonKey(name:'scoreDetailValues')
	List<int>? scoreDetailValues;
	
	@JsonKey(name:'commendationNodeScoresByHash')
	Map<String, int>? commendationNodeScoresByHash;
	
	@JsonKey(name:'commendationScoresByHash')
	Map<String, int>? commendationScoresByHash;

	factory DestinySocialCommendationsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinySocialCommendationsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySocialCommendationsComponentToJson(this);

	static Future<DestinySocialCommendationsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySocialCommendationsComponent>((json)=>DestinySocialCommendationsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}