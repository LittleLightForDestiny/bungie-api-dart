import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_activity_variant_definition.g.dart';

/// Represents a variant on an activity for a Milestone: a specific difficulty tier, or a specific activity variant for example.
/// These will often have more specific details, such as an associated Guided Game, progression steps, tier-specific rewards, and custom values.
@JsonSerializable()
class DestinyMilestoneActivityVariantDefinition{	
	DestinyMilestoneActivityVariantDefinition();

	
	/// The hash to use for looking up the variant Activity's definition (DestinyActivityDefinition), where you can find its distinguishing characteristics such as difficulty level and recommended light level. 
	/// Frequently, that will be the only distinguishing characteristics in practice, which is somewhat of a bummer.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// If you care to do so, render the variants in the order prescribed by this value.
	/// When you combine live Milestone data with the definition, the order becomes more useful because you'll be cross-referencing between the definition and live data.
	@JsonKey(name:'order')
	int? order;

	factory DestinyMilestoneActivityVariantDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneActivityVariantDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityVariantDefinitionToJson(this);

	static Future<DestinyMilestoneActivityVariantDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneActivityVariantDefinition>((json)=>DestinyMilestoneActivityVariantDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}