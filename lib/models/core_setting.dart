class CoreSetting{
	String identifier;
	bool isDefault;
	String displayName;
	String summary;
	String imagePath;
	List<CoreSetting> childSettings;
	CoreSetting(
		String this.identifier,
		bool this.isDefault,
		String this.displayName,
		String this.summary,
		String this.imagePath,
		List<CoreSetting> this.childSettings,
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
				CoreSetting.fromList(data['childSettings']),
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
			data['identifier'] = identifier;
			data['isDefault'] = isDefault;
			data['displayName'] = displayName;
			data['summary'] = summary;
			data['imagePath'] = imagePath;
			data['childSettings'] = childSettings.map((item)=>item.toMap());
	}
}