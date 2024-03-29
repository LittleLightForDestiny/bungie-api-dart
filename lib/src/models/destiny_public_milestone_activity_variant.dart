import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_public_milestone_activity_variant.g.dart';

/// Represents a variant of an activity that&#39;s relevant to a milestone.
@JsonSerializable()
class DestinyPublicMilestoneActivityVariant{	
	DestinyPublicMilestoneActivityVariant();

	
	/// The hash identifier of this activity variant. Examine the activity's definition in the Manifest database to determine what makes it a distinct variant. Usually it will be difficulty level or whether or not it is a guided game variant of the activity, but theoretically it could be distinguished in any arbitrary way.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way.
	@JsonKey(name:'activityModeHash')
	int? activityModeHash;
	
	/// The enumeration equivalent of the most specific Activity Mode under which this activity is played.
	@JsonKey(name:'activityModeType')
	int? activityModeType;

	factory DestinyPublicMilestoneActivityVariant.fromJson(Map<String, dynamic> json) {
		return _$DestinyPublicMilestoneActivityVariantFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneActivityVariantToJson(this);

	static Future<DestinyPublicMilestoneActivityVariant> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPublicMilestoneActivityVariant>((json)=>DestinyPublicMilestoneActivityVariant.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}