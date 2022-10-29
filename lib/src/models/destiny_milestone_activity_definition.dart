import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_activity_variant_definition.dart';

part 'destiny_milestone_activity_definition.g.dart';

/// Milestones can have associated activities which provide additional information about the context, challenges, modifiers, state etc... related to this Milestone. 
/// Information we need to be able to return that data is defined here, along with Tier data to establish a relationship between a conceptual Activity and its difficulty levels and variants.
@JsonSerializable()
class DestinyMilestoneActivityDefinition{	
	DestinyMilestoneActivityDefinition();

	
	/// The "Conceptual" activity hash. Basically, we picked the lowest level activity and are treating it as the canonical definition of the activity for rendering purposes.
	/// If you care about the specific difficulty modes and variations, use the activities under "Variants".
	@JsonKey(name:'conceptualActivityHash')
	int? conceptualActivityHash;
	
	/// A milestone-referenced activity can have many variants, such as Tiers or alternative modes of play.
	/// Even if there is only a single variant, the details for these are represented within as a variant definition.
	/// It is assumed that, if this DestinyMilestoneActivityDefinition is active, then all variants should be active.
	/// If a Milestone could ever split the variants' active status conditionally, they should all have their own DestinyMilestoneActivityDefinition instead! The potential duplication will be worth it for the obviousness of processing and use.
	@JsonKey(name:'variants')
	Map<String, DestinyMilestoneActivityVariantDefinition>? variants;

	factory DestinyMilestoneActivityDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneActivityDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneActivityDefinitionToJson(this);

	static Future<DestinyMilestoneActivityDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneActivityDefinition>((json)=>DestinyMilestoneActivityDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}