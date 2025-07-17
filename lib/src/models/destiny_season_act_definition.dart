import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_season_act_definition.g.dart';

/// Defines the name, start time and ranks included in an Act of an Episode.
@JsonSerializable()
class DestinySeasonActDefinition{	
	DestinySeasonActDefinition();

	
	/// The name of the Act.
	@JsonKey(name:'displayName')
	String? displayName;
	
	/// The start time of the Act.
	@JsonKey(name:'startTime')
	String? startTime;
	
	/// The number of ranks included in the Act.
	@JsonKey(name:'rankCount')
	int? rankCount;

	factory DestinySeasonActDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonActDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonActDefinitionToJson(this);

	static Future<DestinySeasonActDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonActDefinition>((json)=>DestinySeasonActDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}