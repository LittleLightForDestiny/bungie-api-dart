import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_color.dart';

part 'destiny_social_commendation_definition.g.dart';

@JsonSerializable()
class DestinySocialCommendationDefinition{	
	DestinySocialCommendationDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'cardImagePath')
	String? cardImagePath;
	
	/// Represents a color whose RGBA values are all represented as values between 0 and 255.
	@JsonKey(name:'color')
	DestinyColor? color;
	
	@JsonKey(name:'displayPriority')
	int? displayPriority;
	
	@JsonKey(name:'activityGivingLimit')
	int? activityGivingLimit;
	
	@JsonKey(name:'parentCommendationNodeHash')
	int? parentCommendationNodeHash;
	
	/// The display properties for the the activities that this commendation is available in.
	@JsonKey(name:'displayActivities')
	List<DestinyDisplayPropertiesDefinition>? displayActivities;
	
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

	factory DestinySocialCommendationDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySocialCommendationDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySocialCommendationDefinitionToJson(this);

	static Future<DestinySocialCommendationDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySocialCommendationDefinition>((json)=>DestinySocialCommendationDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}