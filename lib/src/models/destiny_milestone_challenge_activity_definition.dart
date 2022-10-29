import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_challenge_definition.dart';
import 'destiny_milestone_challenge_activity_graph_node_entry.dart';
import 'destiny_milestone_challenge_activity_phase.dart';

part 'destiny_milestone_challenge_activity_definition.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityDefinition{	
	DestinyMilestoneChallengeActivityDefinition();

	
	/// The activity for which this challenge is active.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	@JsonKey(name:'challenges')
	List<DestinyMilestoneChallengeDefinition>? challenges;
	
	/// If the activity and its challenge is visible on any of these nodes, it will be returned.
	@JsonKey(name:'activityGraphNodes')
	List<DestinyMilestoneChallengeActivityGraphNodeEntry>? activityGraphNodes;
	
	/// Phases related to this activity, if there are any.
	/// These will be listed in the order in which they will appear in the actual activity.
	@JsonKey(name:'phases')
	List<DestinyMilestoneChallengeActivityPhase>? phases;

	factory DestinyMilestoneChallengeActivityDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneChallengeActivityDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityDefinitionToJson(this);

	static Future<DestinyMilestoneChallengeActivityDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneChallengeActivityDefinition>((json)=>DestinyMilestoneChallengeActivityDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}