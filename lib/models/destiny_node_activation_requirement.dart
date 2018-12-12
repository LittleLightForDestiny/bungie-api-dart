class DestinyNodeActivationRequirement{
	int gridLevel;
	List<int> materialRequirementHashes;
	DestinyNodeActivationRequirement(
		int this.gridLevel,
		List<int> this.materialRequirementHashes,
	);

	static DestinyNodeActivationRequirement fromMap(Map<String, dynamic> data){
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
      list.add(DestinyNodeActivationRequirement.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['gridLevel'] = gridLevel;
			data['materialRequirementHashes'] = materialRequirementHashes;
	}
}