class GroupTheme{
	String name;
	String folder;
	String description;
	GroupTheme(
		String this.name,
		String this.folder,
		String this.description,
	);

	static GroupTheme fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupTheme(
				data['name'],
				data['folder'],
				data['description'],
		);
	}

	static List<GroupTheme> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupTheme> list = new List();
    data.forEach((item) {
      list.add(GroupTheme.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = name;
			data['folder'] = folder;
			data['description'] = description;
	}
}