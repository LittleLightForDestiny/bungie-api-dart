
/*  */
class DestinyActivityLoadoutRequirement{
	
	/*  */
	int equipmentSlotHash;
	
	/*  */
	List<int> allowedEquippedItemHashes;
	
	/*  */
	List<int> allowedWeaponSubTypes;
	DestinyActivityLoadoutRequirement(
		this.equipmentSlotHash,
		this.allowedEquippedItemHashes,
		this.allowedWeaponSubTypes,
	);

	static DestinyActivityLoadoutRequirement fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityLoadoutRequirement(
				data['equipmentSlotHash'],
				data['allowedEquippedItemHashes'] != null ? data['allowedEquippedItemHashes']?.cast<int>() ?? null : null,
				data['allowedWeaponSubTypes'] != null ? data['allowedWeaponSubTypes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyActivityLoadoutRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityLoadoutRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityLoadoutRequirement.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['equipmentSlotHash'] = this.equipmentSlotHash;
			data['allowedEquippedItemHashes'] = this.allowedEquippedItemHashes;
			data['allowedWeaponSubTypes'] = this.allowedWeaponSubTypes;
		return data;
	}
}