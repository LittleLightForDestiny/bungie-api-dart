class DestinyDefinition{
	int hash;
	int index;
	bool redacted;
	DestinyDefinition(
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}