
/** Items that can be equipped define this block. It contains information we need to understand how and when the item can be equipped. */
class DestinyEquippingBlockDefinition{
	
	/** If the item is part of a gearset, this is a reference to that gearset item. */
	int gearsetItemHash;
	
	/** If defined, this is the label used to check if the item has other items of matching types already equipped. 
For instance, when you aren't allowed to equip more than one Exotic Weapon, that's because all exotic weapons have identical uniqueLabels and the game checks the to-be-equipped item's uniqueLabel vs. all other already equipped items (other than the item in the slot that's about to be occupied). */
	String uniqueLabel;
	
	/** The hash of that unique label. Does not point to a specific definition. */
	int uniqueLabelHash;
	
	/** An equipped item *must* be equipped in an Equipment Slot. This is the hash identifier of the DestinyEquipmentSlotDefinition into which it must be equipped. */
	int equipmentSlotTypeHash;
	
	/** These are custom attributes on the equippability of the item.
For now, this can only be "equip on acquire", which would mean that the item will be automatically equipped as soon as you pick it up. */
	int attributes;
	
	/** Ammo type used by a weapon is no longer determined by the bucket in which it is contained. If the item has an ammo type - i.e. if it is a weapon - this will be the type of ammunition expected. */
	int ammoType;
	
	/** These are strings that represent the possible Game/Account/Character state failure conditions that can occur when trying to equip the item. They match up one-to-one with requiredUnlockExpressions. */
	List<String> displayStrings;
	DestinyEquippingBlockDefinition(
		this.gearsetItemHash,
		this.uniqueLabel,
		this.uniqueLabelHash,
		this.equipmentSlotTypeHash,
		this.attributes,
		this.ammoType,
		this.displayStrings,
	);

	static DestinyEquippingBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquippingBlockDefinition(
				data['gearsetItemHash'],
				data['uniqueLabel'],
				data['uniqueLabelHash'],
				data['equipmentSlotTypeHash'],
				data['attributes'],
				data['ammoType'],
				data['displayStrings'] != null ? data['displayStrings']?.cast<String>() ?? null : null,
		);
	}

	static List<DestinyEquippingBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEquippingBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyEquippingBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['gearsetItemHash'] = this.gearsetItemHash;
			data['uniqueLabel'] = this.uniqueLabel;
			data['uniqueLabelHash'] = this.uniqueLabelHash;
			data['equipmentSlotTypeHash'] = this.equipmentSlotTypeHash;
			data['attributes'] = this.attributes;
			data['ammoType'] = this.ammoType;
			data['displayStrings'] = this.displayStrings;
		return data;
	}
}