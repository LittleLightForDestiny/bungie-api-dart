import 'destiny_milestone_activity_completion_status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_activity_variant.g.dart';

/// Represents custom data that we know about an individual variant of an activity.
@JsonSerializable()
class DestinyMilestoneActivityVariant {

	/// The hash for the specific variant of the activity related to this milestone. You can pull more detailed static info from the DestinyActivityDefinition, such as difficulty level.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// An OPTIONAL component: if it makes sense to talk about this activity variant in terms of whether or not it has been completed or what progress you have made in it, this will be returned. Otherwise, this will be NULL.
	@JsonKey(name:'completionStatus')
	DestinyMilestoneActivityCompletionStatus completionStatus;

	/// The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it&#39;s not clear what mode the PVP map is being played under. If it&#39;s a playlist, this will be less specific: but hopefully useful in some way.
	@JsonKey(name:'activityModeHash')
	int activityModeHash;

	/// The enumeration equivalent of the most specific Activity Mode under which this activity is played.
	@JsonKey(name:'activityModeType')
	int activityModeType;
	DestinyMilestoneActivityVariant();

	factory DestinyMilestoneActivityVariant.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneActivityVariantFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityVariantToJson(this);
}
