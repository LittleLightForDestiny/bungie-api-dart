class DestinyActivityUnlockStringDefinition{
	String displayString;
	DestinyActivityUnlockStringDefinition(
		String this.displayString,
	);

	static DestinyActivityUnlockStringDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityUnlockStringDefinition(
				data['displayString'],
		);
	}

	static List<DestinyActivityUnlockStringDefinition> fromList(List<dynamic> data){
		List<DestinyActivityUnlockStringDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityUnlockStringDefinition.fromJson(item));
    });
    return list;
	}
}