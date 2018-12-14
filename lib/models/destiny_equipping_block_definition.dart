class DestinyEquippingBlockDefinition{
	int gearsetItemHash;
	String uniqueLabel;
	int uniqueLabelHash;
	int equipmentSlotTypeHash;
	int attributes;
	int ammoType;
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