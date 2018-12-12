class DestinyItemQualityBlockDefinition{
	List<int> itemLevels;
	int qualityLevel;
	String infusionCategoryName;
	int infusionCategoryHash;
	List<int> infusionCategoryHashes;
	int progressionLevelRequirementHash;
	DestinyItemQualityBlockDefinition(
		List<int> this.itemLevels,
		int this.qualityLevel,
		String this.infusionCategoryName,
		int this.infusionCategoryHash,
		List<int> this.infusionCategoryHashes,
		int this.progressionLevelRequirementHash,
	);

	static DestinyItemQualityBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemQualityBlockDefinition(
				data['itemLevels'],
				data['qualityLevel'],
				data['infusionCategoryName'],
				data['infusionCategoryHash'],
				data['infusionCategoryHashes'],
				data['progressionLevelRequirementHash'],
		);
	}

	static List<DestinyItemQualityBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemQualityBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemQualityBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemLevels'] = this.itemLevels;
			data['qualityLevel'] = this.qualityLevel;
			data['infusionCategoryName'] = this.infusionCategoryName;
			data['infusionCategoryHash'] = this.infusionCategoryHash;
			data['infusionCategoryHashes'] = this.infusionCategoryHashes;
			data['progressionLevelRequirementHash'] = this.progressionLevelRequirementHash;
		return data;
	}
}