import 'destiny_public_milestone_activity_variant.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_milestone_activity.g.dart';

/// A milestone may have one or more conceptual Activities associated with it, and each of those conceptual activities could have a variety of variants, modes, tiers, what-have-you. Our attempts to determine what qualifies as a conceptual activity are, unfortunately, janky. So if you see missing modes or modes that don&#39;t seem appropriate to you, let us know and I&#39;ll buy you a beer if we ever meet up in person.
@JsonSerializable()
class DestinyPublicMilestoneActivity {

	/// The hash identifier of the activity that&#39;s been chosen to be considered the canonical &quot;conceptual&quot; activity definition. This may have many variants, defined herein.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// The activity may have 0-to-many modifiers: if it does, this will contain the hashes to the DestinyActivityModifierDefinition that defines the modifier being applied.
	@JsonKey(name:'modifierHashes')
	List<int> modifierHashes;

	/// Every relevant variation of this conceptual activity, including the conceptual activity itself, have variants defined here.
	@JsonKey(name:'variants')
	List<DestinyPublicMilestoneActivityVariant> variants;

	/// The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it&#39;s not clear what mode the PVP map is being played under. If it&#39;s a playlist, this will be less specific: but hopefully useful in some way.
	@JsonKey(name:'activityModeHash')
	int activityModeHash;

	/// The enumeration equivalent of the most specific Activity Mode under which this activity is played.
	@JsonKey(name:'activityModeType')
	int activityModeType;
	DestinyPublicMilestoneActivity();

	factory DestinyPublicMilestoneActivity.fromJson(Map<String, dynamic> json) => _$DestinyPublicMilestoneActivityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneActivityToJson(this);
}
