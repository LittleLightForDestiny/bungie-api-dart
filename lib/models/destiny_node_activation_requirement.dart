class DestinyNodeActivationRequirement{
	int gridLevel;
	List<int> materialRequirementHashes;
	DestinyNodeActivationRequirement(
		int this.gridLevel,
		List<int> this.materialRequirementHashes,
	);

	static DestinyNodeActivationRequirement fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeActivationRequirement(
				data['gridLevel'],
				data['materialRequirementHashes'],
		);
	}

	static List<DestinyNodeActivationRequirement> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeActivationRequirement> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeActivationRequirement.fromJson(item));
    });
    return list;
	}
}