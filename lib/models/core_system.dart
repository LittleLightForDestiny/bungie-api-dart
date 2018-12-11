class CoreSystem{
	bool enabled;
	Map<String, dynamic> parameters;
	CoreSystem(
		bool this.enabled,
		Map<String, dynamic> this.parameters,
	);

	static CoreSystem fromJson(Map<String, dynamic> data){
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
      list.add(CoreSystem.fromJson(item));
    });
    return list;
	}
}