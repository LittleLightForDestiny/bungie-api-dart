import 'destiny_stat.dart';
class DestinyItemInstanceComponent{
	int damageType;
	int damageTypeHash;
	DestinyStat primaryStat;
	int itemLevel;
	int quality;
	bool isEquipped;
	bool canEquip;
	int equipRequiredLevel;
	List<int> unlockHashesRequiredToEquip;
	int cannotEquipReason;
	DestinyItemInstanceComponent(
		int this.damageType,
		int this.damageTypeHash,
		DestinyStat this.primaryStat,
		int this.itemLevel,
		int this.quality,
		bool this.isEquipped,
		bool this.canEquip,
		int this.equipRequiredLevel,
		List<int> this.unlockHashesRequiredToEquip,
		int this.cannotEquipReason,
	);

	static DestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemInstanceComponent(
				data['damageType'],
				data['damageTypeHash'],
				data['primaryStat'],
				data['itemLevel'],
				data['quality'],
				data['isEquipped'],
				data['canEquip'],
				data['equipRequiredLevel'],
				data['unlockHashesRequiredToEquip'],
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
			data['damageType'] = damageType;
			data['damageTypeHash'] = damageTypeHash;
			data['primaryStat'] = primaryStat;
			data['itemLevel'] = itemLevel;
			data['quality'] = quality;
			data['isEquipped'] = isEquipped;
			data['canEquip'] = canEquip;
			data['equipRequiredLevel'] = equipRequiredLevel;
			data['unlockHashesRequiredToEquip'] = unlockHashesRequiredToEquip;
			data['cannotEquipReason'] = cannotEquipReason;
	}
}