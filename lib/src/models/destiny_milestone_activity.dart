import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_activity_variant.dart';

part 'destiny_milestone_activity.g.dart';

/// Sometimes, we know the specific activity that the Milestone wants you to play. This entity provides additional information about that Activity and all of its variants. (sometimes there&#39;s only one variant, but I think you get the point)
@JsonSerializable()
class DestinyMilestoneActivity{	
	DestinyMilestoneActivity();

	
	/// The hash of an arbitrarily chosen variant of this activity. We'll go ahead and call that the "canonical" activity, because if you're using this value you should only use it for properties that are common across the variants: things like the name of the activity, it's location, etc... Use this hash to look up the DestinyActivityDefinition of this activity for rendering data.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way.
	@JsonKey(name:'activityModeHash')
	int? activityModeHash;
	
	/// The enumeration equivalent of the most specific Activity Mode under which this activity is played.
	@JsonKey(name:'activityModeType')
	int? activityModeType;
	
	/// If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data. Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live.
	@JsonKey(name:'modifierHashes')
	List<int>? modifierHashes;
	
	/// If you want more than just name/location/etc... you're going to have to dig into and show the variants of the conceptual activity. These will differ in seemingly arbitrary ways, like difficulty level and modifiers applied. Show it in whatever way tickles your fancy.
	@JsonKey(name:'variants')
	List<DestinyMilestoneActivityVariant>? variants;

	factory DestinyMilestoneActivity.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneActivityFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityToJson(this);

	static Future<DestinyMilestoneActivity> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneActivity>((json)=>DestinyMilestoneActivity.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}