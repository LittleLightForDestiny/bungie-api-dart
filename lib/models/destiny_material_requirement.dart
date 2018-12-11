class DestinyMaterialRequirement{
	int itemHash;
	bool deleteOnAction;
	int count;
	bool omitFromRequirements;
	DestinyMaterialRequirement(
		int this.itemHash,
		bool this.deleteOnAction,
		int this.count,
		bool this.omitFromRequirements,
	);

	static DestinyMaterialRequirement fromJson(Map<String, dynamic> data){
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
      list.add(DestinyMaterialRequirement.fromJson(item));
    });
    return list;
	}
}