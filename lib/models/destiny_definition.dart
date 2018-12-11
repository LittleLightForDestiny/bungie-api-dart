class DestinyDefinition{
	int hash;
	int index;
	bool redacted;
	DestinyDefinition(
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDefinition(
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDefinition.fromJson(item));
    });
    return list;
	}
}