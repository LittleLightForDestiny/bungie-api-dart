import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/damage_type.dart';

part 'destiny_sandbox_perk_definition.g.dart';

/// Perks are modifiers to a character or item that can be applied situationally.
/// - Perks determine a weapon&#39;s damage type.
/// - Perks put the Mods in Modifiers (they are literally the entity that bestows the Sandbox benefit for whatever fluff text about the modifier in the Socket, Plug or Talent Node)
/// - Perks are applied for unique alterations of state in Objectives
/// Anyways, I&#39;m sure you can see why perks are so interesting.
/// What Perks often don&#39;t have is human readable information, so we attempt to reverse engineer that by pulling that data from places that uniquely refer to these perks: namely, Talent Nodes and Plugs. That only gives us a subset of perks that are human readable, but those perks are the ones people generally care about anyways. The others are left as a mystery, their true purpose mostly unknown and undocumented.
@JsonSerializable()
class DestinySandboxPerkDefinition{	
	DestinySandboxPerkDefinition();

	
	/// These display properties are by no means guaranteed to be populated. Usually when it is, it's only because we back-filled them with the displayProperties of some Talent Node or Plug item that happened to be uniquely providing that perk.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// The string identifier for the perk.
	@JsonKey(name:'perkIdentifier')
	String? perkIdentifier;
	
	/// If true, you can actually show the perk in the UI. Otherwise, it doesn't have useful player-facing information.
	@JsonKey(name:'isDisplayable')
	bool? isDisplayable;
	
	/// If this perk grants a damage type to a weapon, the damage type will be defined here.
	/// Unless you have a compelling reason to use this enum value, use the damageTypeHash instead to look up the actual DestinyDamageTypeDefinition.
	@JsonKey(name:'damageType',fromJson:decodeDamageType,toJson:encodeDamageType)
	DamageType? damageType;
	
	/// The hash identifier for looking up the DestinyDamageTypeDefinition, if this perk has a damage type.
	/// This is preferred over using the damageType enumeration value, which has been left purely because it is occasionally convenient.
	@JsonKey(name:'damageTypeHash')
	int? damageTypeHash;
	
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

	factory DestinySandboxPerkDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySandboxPerkDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySandboxPerkDefinitionToJson(this);

	static Future<DestinySandboxPerkDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySandboxPerkDefinition>((json)=>DestinySandboxPerkDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}