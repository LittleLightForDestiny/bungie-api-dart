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
			data['primaryStat'] = this.primaryStat;
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