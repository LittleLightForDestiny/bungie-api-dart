class DestinyParentItemOverride{
	List<String> additionalEquipRequirementsDisplayStrings;
	String pipIcon;
	DestinyParentItemOverride(
		List<String> this.additionalEquipRequirementsDisplayStrings,
		String this.pipIcon,
	);

	static DestinyParentItemOverride fromJson(Map<String, dynamic> data){
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
      list.add(DestinyParentItemOverride.fromJson(item));
    });
    return list;
	}
}