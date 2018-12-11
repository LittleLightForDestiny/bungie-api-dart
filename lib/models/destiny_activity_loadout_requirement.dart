class DestinyActivityLoadoutRequirement{
	int equipmentSlotHash;
	List<int> allowedEquippedItemHashes;
	List<int> allowedWeaponSubTypes;
	DestinyActivityLoadoutRequirement(
		int this.equipmentSlotHash,
		List<int> this.allowedEquippedItemHashes,
		List<int> this.allowedWeaponSubTypes,
	);

	static DestinyActivityLoadoutRequirement fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityLoadoutRequirement(
				data['equipmentSlotHash'],
				data['allowedEquippedItemHashes'],
				data['allowedWeaponSubTypes'],
		);
	}

	static List<DestinyActivityLoadoutRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityLoadoutRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityLoadoutRequirement.fromJson(item));
    });
    return list;
	}
}