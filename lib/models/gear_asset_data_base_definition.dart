class GearAssetDataBaseDefinition{
	int version;
	String path;
	GearAssetDataBaseDefinition(
		int this.version,
		String this.path,
	);

	static GearAssetDataBaseDefinition fromJson(Map<String, dynamic> data){
		return new GearAssetDataBaseDefinition(
				data['version'],
				data['path'],
		);
	}

	static List<GearAssetDataBaseDefinition> fromList(List<dynamic> data){
		List<GearAssetDataBaseDefinition> list = new List();
    data.forEach((item) {
      list.add(GearAssetDataBaseDefinition.fromJson(item));
    });
    return list;
	}
}