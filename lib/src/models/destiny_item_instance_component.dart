import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/damage_type.dart';
import 'destiny_stat.dart';
import '../enums/equip_failure_reason.dart';
import 'destiny_item_instance_energy.dart';

part 'destiny_item_instance_component.g.dart';

/// If an item is &quot;instanced&quot;, this will contain information about the item&#39;s instance that doesn&#39;t fit easily into other components. One might say this is the &quot;essential&quot; instance data for the item.
/// Items are instanced if they require information or state that can vary. For instance, weapons are Instanced: they are given a unique identifier, uniquely generated stats, and can have their properties altered. Non-instanced items have none of these things: for instance, Glimmer has no unique properties aside from how much of it you own.
/// You can tell from an item&#39;s definition whether it will be instanced or not by looking at the DestinyInventoryItemDefinition&#39;s definition.inventory.isInstanceItem property.
@JsonSerializable()
class DestinyItemInstanceComponent{	
	DestinyItemInstanceComponent();

	
	/// If the item has a damage type, this is the item's current damage type.
	@JsonKey(name:'damageType',fromJson:decodeDamageType,toJson:encodeDamageType)
	DamageType? damageType;
	
	/// The current damage type's hash, so you can look up localized info and icons for it.
	@JsonKey(name:'damageTypeHash')
	int? damageTypeHash;
	
	/// The item stat that we consider to be "primary" for the item. For instance, this would be "Attack" for Weapons or "Defense" for armor.
	@JsonKey(name:'primaryStat')
	DestinyStat? primaryStat;
	
	/// The Item's "Level" has the most significant bearing on its stats, such as Light and Power.
	@JsonKey(name:'itemLevel')
	int? itemLevel;
	
	/// The "Quality" of the item has a lesser - but still impactful - bearing on stats like Light and Power.
	@JsonKey(name:'quality')
	int? quality;
	
	/// Is the item currently equipped on the given character?
	@JsonKey(name:'isEquipped')
	bool? isEquipped;
	
	/// If this is an equippable item, you can check it here. There are permanent as well as transitory reasons why an item might not be able to be equipped: check cannotEquipReason for details.
	@JsonKey(name:'canEquip')
	bool? canEquip;
	
	/// If the item cannot be equipped until you reach a certain level, that level will be reflected here.
	@JsonKey(name:'equipRequiredLevel')
	int? equipRequiredLevel;
	
	/// Sometimes, there are limitations to equipping that are represented by character-level flags called "unlocks".
	/// This is a list of flags that they need in order to equip the item that the character has not met. Use these to look up the descriptions to show in your UI by looking up the relevant DestinyUnlockDefinitions for the hashes.
	@JsonKey(name:'unlockHashesRequiredToEquip')
	List<int>? unlockHashesRequiredToEquip;
	
	/// If you cannot equip the item, this is a flags enum that enumerates all of the reasons why you couldn't equip the item. You may need to refine your UI further by using unlockHashesRequiredToEquip and equipRequiredLevel.
	@JsonKey(name:'cannotEquipReason')
	EquipFailureReason? cannotEquipReason;
	
	/// If populated, this item has a breaker type corresponding to the given value. See DestinyBreakerTypeDefinition for more details.
	@JsonKey(name:'breakerType')
	int? breakerType;
	
	/// If populated, this is the hash identifier for the item's breaker type. See DestinyBreakerTypeDefinition for more details.
	@JsonKey(name:'breakerTypeHash')
	int? breakerTypeHash;
	
	/// IF populated, this item supports Energy mechanics (i.e. Armor 2.0), and these are the current details of its energy type and available capacity to spend energy points.
	@JsonKey(name:'energy')
	DestinyItemInstanceEnergy? energy;
	
	/// Gear Tier, if applicable, fished up from the unlock value items.gear_tier
	@JsonKey(name:'gearTier')
	int? gearTier;

	factory DestinyItemInstanceComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemInstanceComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemInstanceComponentToJson(this);

	static Future<DestinyItemInstanceComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemInstanceComponent>((json)=>DestinyItemInstanceComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}