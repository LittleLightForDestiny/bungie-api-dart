import 'destiny_display_properties_definition.dart';
import 'destiny_art_dye_reference.dart';

/** Characters can not only have Inventory buckets (containers of items that are generally matched by their type or functionality), they can also have Equipment Slots.
The Equipment Slot is an indicator that the related bucket can have instanced items equipped on the character. For instance, the Primary Weapon bucket has an Equipment Slot that determines whether you can equip primary weapons, and holds the association between its slot and the inventory bucket from which it can have items equipped.
An Equipment Slot must have a related Inventory Bucket, but not all inventory buckets must have Equipment Slots. */
class DestinyEquipmentSlotDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** These technically point to "Equipment Category Definitions". But don't get excited. There's nothing of significant value in those definitions, so I didn't bother to expose them. You can use the hash here to group equipment slots by common functionality, which serves the same purpose as if we had the Equipment Category definitions exposed. */
	int equipmentCategoryHash;
	
	/** The inventory bucket that owns this equipment slot. */
	int bucketTypeHash;
	
	/** If True, equipped items should have their custom art dyes applied when rendering the item. Otherwise, custom art dyes on an item should be ignored if the item is equipped in this slot. */
	bool applyCustomArtDyes;
	
	/** The Art Dye Channels that apply to this equipment slot. */
	List<DestinyArtDyeReference> artDyeChannels;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyEquipmentSlotDefinition(
		this.displayProperties,
		this.equipmentCategoryHash,
		this.bucketTypeHash,
		this.applyCustomArtDyes,
		this.artDyeChannels,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyEquipmentSlotDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquipmentSlotDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['equipmentCategoryHash'],
				data['bucketTypeHash'],
				data['applyCustomArtDyes'],
				data['artDyeChannels'] != null ? DestinyArtDyeReference.fromList(data['artDyeChannels']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyEquipmentSlotDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEquipmentSlotDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipmentSlotDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['equipmentCategoryHash'] = this.equipmentCategoryHash;
			data['bucketTypeHash'] = this.bucketTypeHash;
			data['applyCustomArtDyes'] = this.applyCustomArtDyes;
			data['artDyeChannels'] = this.artDyeChannels != null? this.artDyeChannels.map((item)=>item.toMap()).toList() : null;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}