class DestinyParentItemOverride{
	List<String> additionalEquipRequirementsDisplayStrings;
	String pipIcon;
	DestinyParentItemOverride(
		List<String> this.additionalEquipRequirementsDisplayStrings,
		String this.pipIcon,
	);

	static DestinyParentItemOverride fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyParentItemOverride(
				data['additionalEquipRequirementsDisplayStrings'],
				data['pipIcon'],
		);
	}

	static List<DestinyParentItemOverride> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyParentItemOverride> list = new List();
    data.forEach((item) {
      list.add(DestinyParentItemOverride.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['additionalEquipRequirementsDisplayStrings'] = additionalEquipRequirementsDisplayStrings;
			data['pipIcon'] = pipIcon;
	}
}