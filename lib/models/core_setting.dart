class CoreSetting{
	String identifier;
	bool isDefault;
	String displayName;
	String summary;
	String imagePath;
	List<CoreSetting> childSettings;
	CoreSetting(
		this.identifier,
		this.isDefault,
		this.displayName,
		this.summary,
		this.imagePath,
		this.childSettings,
	);

	static CoreSetting fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSetting(
				data['identifier'],
				data['isDefault'],
				data['displayName'],
				data['summary'],
				data['imagePath'],
				data['childSettings'] != null ? CoreSetting.fromList(data['childSettings']) : null,
		);
	}

	static List<CoreSetting> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSetting> list = new List();
    data.forEach((item) {
      list.add(CoreSetting.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = this.identifier;
			data['isDefault'] = this.isDefault;
			data['displayName'] = this.displayName;
			data['summary'] = this.summary;
			data['imagePath'] = this.imagePath;
			data['childSettings'] = this.childSettings.map((item)=>item.toMap()).toList();
		return data;
	}
}