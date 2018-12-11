class DestinyUnlockValueDefinition{
	int hash;
	int index;
	bool redacted;
	DestinyUnlockValueDefinition(
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyUnlockValueDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockValueDefinition(
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyUnlockValueDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockValueDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockValueDefinition.fromJson(item));
    });
    return list;
	}
}