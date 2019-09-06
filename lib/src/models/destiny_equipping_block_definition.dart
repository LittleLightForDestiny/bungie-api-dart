
import 'package:json_annotation/json_annotation.dart';
part 'destiny_equipping_block_definition.g.dart';

/// Items that can be equipped define this block. It contains information we need to understand how and when the item can be equipped.
@JsonSerializable()
class DestinyEquippingBlockDefinition {

	/// If the item is part of a gearset, this is a reference to that gearset item.
	@JsonKey(name:'gearsetItemHash')
	int gearsetItemHash;

	/// If defined, this is the label used to check if the item has other items of matching types already equipped. 
	/// For instance, when you aren&#39;t allowed to equip more than one Exotic Weapon, that&#39;s because all exotic weapons have identical uniqueLabels and the game checks the to-be-equipped item&#39;s uniqueLabel vs. all other already equipped items (other than the item in the slot that&#39;s about to be occupied).
	@JsonKey(name:'uniqueLabel')
	String uniqueLabel;

	/// The hash of that unique label. Does not point to a specific definition.
	@JsonKey(name:'uniqueLabelHash')
	int uniqueLabelHash;

	/// An equipped item *must* be equipped in an Equipment Slot. This is the hash identifier of the DestinyEquipmentSlotDefinition into which it must be equipped.
	@JsonKey(name:'equipmentSlotTypeHash')
	int equipmentSlotTypeHash;

	/// These are custom attributes on the equippability of the item.
	/// For now, this can only be &quot;equip on acquire&quot;, which would mean that the item will be automatically equipped as soon as you pick it up.
	@JsonKey(name:'attributes')
	int attributes;

	/// Ammo type used by a weapon is no longer determined by the bucket in which it is contained. If the item has an ammo type - i.e. if it is a weapon - this will be the type of ammunition expected.
	@JsonKey(name:'ammoType')
	int ammoType;

	/// These are strings that represent the possible Game&#x2F;Account&#x2F;Character state failure conditions that can occur when trying to equip the item. They match up one-to-one with requiredUnlockExpressions.
	@JsonKey(name:'displayStrings')
	List<String> displayStrings;
	DestinyEquippingBlockDefinition();

	factory DestinyEquippingBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyEquippingBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyEquippingBlockDefinitionToJson(this);
}
