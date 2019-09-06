import 'destiny_milestone_activity_phase.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_activity_completion_status.g.dart';

/// Represents this player&#39;s personal completion status for the Activity under a Milestone, if the activity has trackable completion and progress information. (most activities won&#39;t, or the concept won&#39;t apply. For instance, it makes sense to talk about a tier of a raid as being Completed or having progress, but it doesn&#39;t make sense to talk about a Crucible Playlist in those terms.
@JsonSerializable()
class DestinyMilestoneActivityCompletionStatus {

	/// If the activity has been &quot;completed&quot;, that information will be returned here.
	@JsonKey(name:'completed')
	bool completed;

	/// If the Activity has discrete &quot;phases&quot; that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity.
	@JsonKey(name:'phases')
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneActivityCompletionStatus();

	factory DestinyMilestoneActivityCompletionStatus.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneActivityCompletionStatusFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityCompletionStatusToJson(this);
}
