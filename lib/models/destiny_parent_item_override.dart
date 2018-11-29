class DestinyParentItemOverride{
	List<String> additionalEquipRequirementsDisplayStrings;
	String pipIcon;
	DestinyParentItemOverride(
		List<String> this.additionalEquipRequirementsDisplayStrings,
		String this.pipIcon,
	);

	static DestinyParentItemOverride fromJson(Map<String, dynamic> data){
		return new DestinyParentItemOverride(
				data['additionalEquipRequirementsDisplayStrings'],
				data['pipIcon'],
		);
	}

	static List<DestinyParentItemOverride> fromList(List<dynamic> data){
		List<DestinyParentItemOverride> list = new List();
    data.forEach((item) {
      list.add(DestinyParentItemOverride.fromJson(item));
    });
    return list;
	}
}