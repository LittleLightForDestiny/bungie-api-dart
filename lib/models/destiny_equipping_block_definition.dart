class DestinyEquippingBlockDefinition{
	int gearsetItemHash;
	String uniqueLabel;
	int uniqueLabelHash;
	int equipmentSlotTypeHash;
	int attributes;
	int ammoType;
	List<String> displayStrings;
	DestinyEquippingBlockDefinition(
		int this.gearsetItemHash,
		String this.uniqueLabel,
		int this.uniqueLabelHash,
		int this.equipmentSlotTypeHash,
		int this.attributes,
		int this.ammoType,
		List<String> this.displayStrings,
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
				data['displayStrings'],
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
			data['gearsetItemHash'] = gearsetItemHash;
			data['uniqueLabel'] = uniqueLabel;
			data['uniqueLabelHash'] = uniqueLabelHash;
			data['equipmentSlotTypeHash'] = equipmentSlotTypeHash;
			data['attributes'] = attributes;
			data['ammoType'] = ammoType;
			data['displayStrings'] = displayStrings;
	}
}