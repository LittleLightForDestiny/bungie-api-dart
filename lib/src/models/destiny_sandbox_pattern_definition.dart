import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_item_sub_type.dart';
import 'destiny_arrangement_region_filter_definition.dart';

part 'destiny_sandbox_pattern_definition.g.dart';

@JsonSerializable()
class DestinySandboxPatternDefinition{	
	DestinySandboxPatternDefinition();

	
	@JsonKey(name:'patternHash')
	int? patternHash;
	
	@JsonKey(name:'patternGlobalTagIdHash')
	int? patternGlobalTagIdHash;
	
	@JsonKey(name:'weaponContentGroupHash')
	int? weaponContentGroupHash;
	
	@JsonKey(name:'weaponTranslationGroupHash')
	int? weaponTranslationGroupHash;
	
	@JsonKey(name:'weaponTypeHash')
	int? weaponTypeHash;
	
	@JsonKey(name:'weaponType',fromJson:decodeDestinyItemSubType,toJson:encodeDestinyItemSubType)
	DestinyItemSubType? weaponType;
	
	@JsonKey(name:'filters')
	List<DestinyArrangementRegionFilterDefinition>? filters;
	
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

	factory DestinySandboxPatternDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySandboxPatternDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySandboxPatternDefinitionToJson(this);

	static Future<DestinySandboxPatternDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySandboxPatternDefinition>((json)=>DestinySandboxPatternDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}