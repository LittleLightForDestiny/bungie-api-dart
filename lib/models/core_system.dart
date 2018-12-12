class CoreSystem{
	bool enabled;
	Map<String, dynamic> parameters;
	CoreSystem(
		bool this.enabled,
		Map<String, dynamic> this.parameters,
	);

	static CoreSystem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSystem(
				data['enabled'],
				data['parameters'],
		);
	}

	static List<CoreSystem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSystem> list = new List();
    data.forEach((item) {
      list.add(CoreSystem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['enabled'] = this.enabled;
			data['parameters'] = this.parameters;
		return data;
	}
}