import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_guardian_rank_icon_backgrounds_definition.dart';

part 'destiny_guardian_rank_constants_definition.g.dart';

@JsonSerializable()
class DestinyGuardianRankConstantsDefinition{	
	DestinyGuardianRankConstantsDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'rankCount')
	int? rankCount;
	
	@JsonKey(name:'rootNodeHash')
	int? rootNodeHash;
	
	@JsonKey(name:'iconBackgrounds')
	DestinyGuardianRankIconBackgroundsDefinition? iconBackgrounds;
	
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

	factory DestinyGuardianRankConstantsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyGuardianRankConstantsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyGuardianRankConstantsDefinitionToJson(this);

	static Future<DestinyGuardianRankConstantsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyGuardianRankConstantsDefinition>((json)=>DestinyGuardianRankConstantsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}