class DestinyActivityUnlockStringDefinition{
	String displayString;
	DestinyActivityUnlockStringDefinition(
		String this.displayString,
	);

	static DestinyActivityUnlockStringDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityUnlockStringDefinition(
				data['displayString'],
		);
	}

	static List<DestinyActivityUnlockStringDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityUnlockStringDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityUnlockStringDefinition.fromJson(item));
    });
    return list;
	}
}