import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_medal_tier_definition.g.dart';

/// An artificial construct of our own creation, to try and put some order on top of Medals and keep them from being one giant, unmanageable and unsorted blob of stats.
/// Unfortunately, we haven&#39;t had time to do this evaluation yet in Destiny 2, so we&#39;re short on Medal Tiers. This will hopefully be updated over time, if Medals continue to exist.
@JsonSerializable()
class DestinyMedalTierDefinition{	
	DestinyMedalTierDefinition();

	
	/// The name of the tier.
	@JsonKey(name:'tierName')
	String? tierName;
	
	/// If you're rendering medals by tier, render them in this order (ascending)
	@JsonKey(name:'order')
	int? order;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyMedalTierDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMedalTierDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMedalTierDefinitionToJson(this);

	static Future<DestinyMedalTierDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMedalTierDefinition>((json)=>DestinyMedalTierDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}