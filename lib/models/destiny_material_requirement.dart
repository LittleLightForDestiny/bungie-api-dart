class DestinyMaterialRequirement{
	int itemHash;
	bool deleteOnAction;
	int count;
	bool omitFromRequirements;
	DestinyMaterialRequirement(
		this.itemHash,
		this.deleteOnAction,
		this.count,
		this.omitFromRequirements,
	);

	static DestinyMaterialRequirement fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMaterialRequirement(
				data['itemHash'],
				data['deleteOnAction'],
				data['count'],
				data['omitFromRequirements'],
		);
	}

	static List<DestinyMaterialRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMaterialRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyMaterialRequirement.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['deleteOnAction'] = this.deleteOnAction;
			data['count'] = this.count;
			data['omitFromRequirements'] = this.omitFromRequirements;
		return data;
	}
}