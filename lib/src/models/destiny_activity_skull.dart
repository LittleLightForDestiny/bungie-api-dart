import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_activity_skull_option.dart';
import '../enums/destiny_activity_skull_dynamic_use.dart';
import '../enums/destiny_activity_modifier_display_category.dart';
import '../enums/destiny_activity_modifier_connotation.dart';

part 'destiny_activity_skull.g.dart';

@JsonSerializable()
class DestinyActivitySkull{	
	DestinyActivitySkull();

	
	@JsonKey(name:'hash')
	int? hash;
	
	@JsonKey(name:'skullIdentifierHash')
	int? skullIdentifierHash;
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'skullOptions')
	List<DestinyActivitySkullOption>? skullOptions;
	
	@JsonKey(name:'dynamicUse',fromJson:decodeDestinyActivitySkullDynamicUse,toJson:encodeDestinyActivitySkullDynamicUse)
	DestinyActivitySkullDynamicUse? dynamicUse;
	
	@JsonKey(name:'modifierPowerContribution')
	int? modifierPowerContribution;
	
	@JsonKey(name:'modifierMultiplierContribution')
	double? modifierMultiplierContribution;
	
	@JsonKey(name:'skullExclusionGroupHash')
	int? skullExclusionGroupHash;
	
	@JsonKey(name:'hasUi')
	bool? hasUi;
	
	@JsonKey(name:'displayDescriptionOverrideForNavMode')
	String? displayDescriptionOverrideForNavMode;
	
	@JsonKey(name:'activityModifierDisplayCategory',fromJson:decodeDestinyActivityModifierDisplayCategory,toJson:encodeDestinyActivityModifierDisplayCategory)
	DestinyActivityModifierDisplayCategory? activityModifierDisplayCategory;
	
	@JsonKey(name:'activityModifierConnotation',fromJson:decodeDestinyActivityModifierConnotation,toJson:encodeDestinyActivityModifierConnotation)
	DestinyActivityModifierConnotation? activityModifierConnotation;
	
	@JsonKey(name:'displayInNavMode')
	bool? displayInNavMode;
	
	@JsonKey(name:'displayInActivitySelection')
	bool? displayInActivitySelection;

	factory DestinyActivitySkull.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySkullFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySkullToJson(this);

	static Future<DestinyActivitySkull> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySkull>((json)=>DestinyActivitySkull.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}