class DestinyUnlockValueDefinition{
	int hash;
	int index;
	bool redacted;
	DestinyUnlockValueDefinition(
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyUnlockValueDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyUnlockValueDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}