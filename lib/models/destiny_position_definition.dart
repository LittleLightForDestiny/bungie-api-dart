class DestinyPositionDefinition{
	int x;
	int y;
	int z;
	DestinyPositionDefinition(
		this.x,
		this.y,
		this.z,
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
			data['x'] = this.x;
			data['y'] = this.y;
			data['z'] = this.z;
		return data;
	}
}