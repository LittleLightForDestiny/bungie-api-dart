import 'destiny_display_properties_definition.dart';
import 'destiny_art_dye_reference.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_equipment_slot_definition.g.dart';

/// Characters can not only have Inventory buckets (containers of items that are generally matched by their type or functionality), they can also have Equipment Slots.
/// The Equipment Slot is an indicator that the related bucket can have instanced items equipped on the character. For instance, the Primary Weapon bucket has an Equipment Slot that determines whether you can equip primary weapons, and holds the association between its slot and the inventory bucket from which it can have items equipped.
/// An Equipment Slot must have a related Inventory Bucket, but not all inventory buckets must have Equipment Slots.
@JsonSerializable()
class DestinyEquipmentSlotDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// These technically point to &quot;Equipment Category Definitions&quot;. But don&#39;t get excited. There&#39;s nothing of significant value in those definitions, so I didn&#39;t bother to expose them. You can use the hash here to group equipment slots by common functionality, which serves the same purpose as if we had the Equipment Category definitions exposed.
	@JsonKey(name:'equipmentCategoryHash')
	int equipmentCategoryHash;

	/// The inventory bucket that owns this equipment slot.
	@JsonKey(name:'bucketTypeHash')
	int bucketTypeHash;

	/// If True, equipped items should have their custom art dyes applied when rendering the item. Otherwise, custom art dyes on an item should be ignored if the item is equipped in this slot.
	@JsonKey(name:'applyCustomArtDyes')
	bool applyCustomArtDyes;

	/// The Art Dye Channels that apply to this equipment slot.
	@JsonKey(name:'artDyeChannels')
	List<DestinyArtDyeReference> artDyeChannels;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyEquipmentSlotDefinition();

	factory DestinyEquipmentSlotDefinition.fromJson(Map<String, dynamic> json) => _$DestinyEquipmentSlotDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyEquipmentSlotDefinitionToJson(this);
}
