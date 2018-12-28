
/*  */
class GearAssetDataBaseDefinition{
	
	/*  */
	int version;
	
	/*  */
	String path;
	GearAssetDataBaseDefinition(
		this.version,
		this.path,
	);

	static GearAssetDataBaseDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GearAssetDataBaseDefinition(
				data['version'],
				data['path'],
		);
	}

	static List<GearAssetDataBaseDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GearAssetDataBaseDefinition> list = new List();
    data.forEach((item) {
      list.add(GearAssetDataBaseDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['version'] = this.version;
			data['path'] = this.path;
		return data;
	}
}