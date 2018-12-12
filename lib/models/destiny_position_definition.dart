class DestinyPositionDefinition{
	int x;
	int y;
	int z;
	DestinyPositionDefinition(
		int this.x,
		int this.y,
		int this.z,
	);

	static DestinyPositionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPositionDefinition(
				data['x'],
				data['y'],
				data['z'],
		);
	}

	static List<DestinyPositionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPositionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPositionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['x'] = x;
			data['y'] = y;
			data['z'] = z;
	}
}