import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_activity_phase.dart';

part 'destiny_milestone_activity_completion_status.g.dart';

/// Represents this player&#39;s personal completion status for the Activity under a Milestone, if the activity has trackable completion and progress information. (most activities won&#39;t, or the concept won&#39;t apply. For instance, it makes sense to talk about a tier of a raid as being Completed or having progress, but it doesn&#39;t make sense to talk about a Crucible Playlist in those terms.
@JsonSerializable()
class DestinyMilestoneActivityCompletionStatus{	
	DestinyMilestoneActivityCompletionStatus();

	
	/// If the activity has been "completed", that information will be returned here.
	@JsonKey(name:'completed')
	bool? completed;
	
	/// If the Activity has discrete "phases" that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity.
	@JsonKey(name:'phases')
	List<DestinyMilestoneActivityPhase>? phases;

	factory DestinyMilestoneActivityCompletionStatus.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneActivityCompletionStatusFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityCompletionStatusToJson(this);

	static Future<DestinyMilestoneActivityCompletionStatus> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneActivityCompletionStatus>((json)=>DestinyMilestoneActivityCompletionStatus.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}