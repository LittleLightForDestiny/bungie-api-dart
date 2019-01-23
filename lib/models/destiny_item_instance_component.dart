import 'destiny_stat.dart';

/** If an item is "instanced", this will contain information about the item's instance that doesn't fit easily into other components. One might say this is the "essential" instance data for the item.
Items are instanced if they require information or state that can vary. For instance, weapons are Instanced: they are given a unique identifier, uniquely generated stats, and can have their properties altered. Non-instanced items have none of these things: for instance, Glimmer has no unique properties aside from how much of it you own.
You can tell from an item's definition whether it will be instanced or not by looking at the DestinyInventoryItemDefinition's definition.inventory.isInstanceItem property. */
class DestinyItemInstanceComponent{
	
	/** If the item has a damage type, this is the item's current damage type. */
	int damageType;
	
	/** The current damage type's hash, so you can look up localized info and icons for it. */
	int damageTypeHash;
	
	/** The item stat that we consider to be "primary" for the item. For instance, this would be "Attack" for Weapons or "Defense" for armor. */
	DestinyStat primaryStat;
	
	/** The Item's "Level" has the most significant bearing on its stats, such as Light and Power. */
	int itemLevel;
	
	/** The "Quality" of the item has a lesser - but still impactful - bearing on stats like Light and Power. */
	int quality;
	
	/** Is the item currently equipped on the given character? */
	bool isEquipped;
	
	/** If this is an equippable item, you can check it here. There are permanent as well as transitory reasons why an item might not be able to be equipped: check cannotEquipReason for details. */
	bool canEquip;
	
	/** If the item cannot be equipped until you reach a certain level, that level will be reflected here. */
	int equipRequiredLevel;
	
	/** Sometimes, there are limitations to equipping that are represented by character-level flags called "unlocks".
This is a list of flags that they need in order to equip the item that the character has not met. Use these to look up the descriptions to show in your UI by looking up the relevant DestinyUnlockDefinitions for the hashes. */
	List<int> unlockHashesRequiredToEquip;
	
	/** If you cannot equip the item, this is a flags enum that enumerates all of the reasons why you couldn't equip the item. You may need to refine your UI further by using unlockHashesRequiredToEquip and equipRequiredLevel. */
	int cannotEquipReason;
	DestinyItemInstanceComponent(
		this.damageType,
		this.damageTypeHash,
		this.primaryStat,
		this.itemLevel,
		this.quality,
		this.isEquipped,
		this.canEquip,
		this.equipRequiredLevel,
		this.unlockHashesRequiredToEquip,
		this.cannotEquipReason,
	);

	static DestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemInstanceComponent(
				data['damageType'],
				data['damageTypeHash'],
				data['primaryStat'] != null ? DestinyStat.fromMap(data['primaryStat']) : null,
				data['itemLevel'],
				data['quality'],
				data['isEquipped'],
				data['canEquip'],
				data['equipRequiredLevel'],
				data['unlockHashesRequiredToEquip'] != null ? data['unlockHashesRequiredToEquip']?.cast<int>() ?? null : null,
				data['cannotEquipReason'],
		);
	}

	static List<DestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemInstanceComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['damageType'] = this.damageType;
			data['damageTypeHash'] = this.damageTypeHash;
			data['primaryStat'] = this.primaryStat != null? this.primaryStat.toMap() : null;
			data['itemLevel'] = this.itemLevel;
			data['quality'] = this.quality;
			data['isEquipped'] = this.isEquipped;
			data['canEquip'] = this.canEquip;
			data['equipRequiredLevel'] = this.equipRequiredLevel;
			data['unlockHashesRequiredToEquip'] = this.unlockHashesRequiredToEquip;
			data['cannotEquipReason'] = this.cannotEquipReason;
		return data;
	}
}