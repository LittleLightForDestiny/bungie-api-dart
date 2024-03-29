import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_energy_type.dart';

part 'destiny_energy_type_definition.g.dart';

/// Represents types of Energy that can be used for costs and payments related to Armor 2.0 mods.
@JsonSerializable()
class DestinyEnergyTypeDefinition{	
	DestinyEnergyTypeDefinition();

	
	/// The description of the energy type, icon etc...
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// A variant of the icon that is transparent and colorless.
	@JsonKey(name:'transparentIconPath')
	String? transparentIconPath;
	
	/// If TRUE, the game shows this Energy type's icon. Otherwise, it doesn't. Whether you show it or not is up to you.
	@JsonKey(name:'showIcon')
	bool? showIcon;
	
	/// We have an enumeration for Energy types for quick reference. This is the current definition's Energy type enum value.
	@JsonKey(name:'enumValue',fromJson:decodeDestinyEnergyType,toJson:encodeDestinyEnergyType)
	DestinyEnergyType? enumValue;
	
	/// If this Energy Type can be used for determining the Type of Energy that an item can consume, this is the hash for the DestinyInvestmentStatDefinition that represents the stat which holds the Capacity for that energy type. (Note that this is optional because "Any" is a valid cost, but not valid for Capacity - an Armor must have a specific Energy Type for determining the energy type that the Armor is restricted to use)
	@JsonKey(name:'capacityStatHash')
	int? capacityStatHash;
	
	/// If this Energy Type can be used as a cost to pay for socketing Armor 2.0 items, this is the hash for the DestinyInvestmentStatDefinition that stores the plug's raw cost.
	@JsonKey(name:'costStatHash')
	int? costStatHash;
	
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

	factory DestinyEnergyTypeDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyEnergyTypeDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEnergyTypeDefinitionToJson(this);

	static Future<DestinyEnergyTypeDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEnergyTypeDefinition>((json)=>DestinyEnergyTypeDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}