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

	static DestinyItemQualityBlockDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemQualityBlockDefinition.fromJson(item));
    });
    return list;
	}
}