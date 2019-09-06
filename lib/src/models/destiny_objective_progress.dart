
import 'package:json_annotation/json_annotation.dart';
part 'destiny_objective_progress.g.dart';

/// Returns data about a character&#39;s status with a given Objective. Combine with DestinyObjectiveDefinition static data for display purposes.
@JsonSerializable()
class DestinyObjectiveProgress {

	/// The unique identifier of the Objective being referred to. Use to look up the DestinyObjectiveDefinition in static data.
	@JsonKey(name:'objectiveHash')
	int objectiveHash;

	/// If the Objective has a Destination associated with it, this is the unique identifier of the Destination being referred to. Use to look up the DestinyDestinationDefinition in static data. This will give localized data about *where* in the universe the objective should be achieved.
	@JsonKey(name:'destinationHash')
	int destinationHash;

	/// If the Objective has an Activity associated with it, this is the unique identifier of the Activity being referred to. Use to look up the DestinyActivityDefinition in static data. This will give localized data about *what* you should be playing for the objective to be achieved.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// If progress has been made, and the progress can be measured numerically, this will be the value of that progress. You can compare it to the DestinyObjectiveDefinition.completionValue property for current vs. upper bounds, and use DestinyObjectiveDefinition.valueStyle to determine how this should be rendered. Note that progress, in Destiny 2, need not be a literal numeric progression. It could be one of a number of possible values, even a Timestamp. Always examine DestinyObjectiveDefinition.valueStyle before rendering progress.
	@JsonKey(name:'progress')
	int progress;

	/// As of Forsaken, objectives&#39; completion value is determined dynamically at runtime.
	/// This value represents the threshold of progress you need to surpass in order for this objective to be considered &quot;complete&quot;.
	/// If you were using objective data, switch from using the DestinyObjectiveDefinition&#39;s &quot;completionValue&quot; to this value.
	@JsonKey(name:'completionValue')
	int completionValue;

	/// Whether or not the Objective is completed.
	@JsonKey(name:'complete')
	bool complete;

	/// If this is true, the objective is visible in-game. Otherwise, it&#39;s not yet visible to the player. Up to you if you want to honor this property.
	@JsonKey(name:'visible')
	bool visible;
	DestinyObjectiveProgress();

	factory DestinyObjectiveProgress.fromJson(Map<String, dynamic> json) => _$DestinyObjectiveProgressFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveProgressToJson(this);
}
