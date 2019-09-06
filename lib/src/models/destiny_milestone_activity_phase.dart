
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_activity_phase.g.dart';

/// Represents whatever information we can return about an explicit phase in an activity. In the future, I hope we&#39;ll have more than just &quot;guh, you done gone and did something,&quot; but for the forseeable future that&#39;s all we&#39;ve got. I&#39;m making it more than just a list of booleans out of that overly-optimistic hope.
@JsonSerializable()
class DestinyMilestoneActivityPhase {

	/// Indicates if the phase has been completed.
	@JsonKey(name:'complete')
	bool complete;

	/// In DestinyActivityDefinition, if the activity has phases, there will be a set of phases defined in the &quot;insertionPoints&quot; property. This is the hash that maps to that phase.
	@JsonKey(name:'phaseHash')
	int phaseHash;
	DestinyMilestoneActivityPhase();

	factory DestinyMilestoneActivityPhase.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneActivityPhaseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityPhaseToJson(this);
}
