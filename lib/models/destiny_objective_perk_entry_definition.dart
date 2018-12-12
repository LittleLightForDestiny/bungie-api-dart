class DestinyObjectivePerkEntryDefinition{
	int perkHash;
	int style;
	DestinyObjectivePerkEntryDefinition(
		int this.perkHash,
		int this.style,
	);

	static DestinyObjectivePerkEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectivePerkEntryDefinition(
				data['perkHash'],
				data['style'],
		);
	}

	static List<DestinyObjectivePerkEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectivePerkEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectivePerkEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['perkHash'] = this.perkHash;
			data['style'] = this.style;
		return data;
	}
}