class GroupTheme{
	String name;
	String folder;
	String description;
	GroupTheme(
		String this.name,
		String this.folder,
		String this.description,
	);

	static GroupTheme fromJson(Map<String, dynamic> data){
		return new GroupTheme(
				data['name'],
				data['folder'],
				data['description'],
		);
	}

	static List<GroupTheme> fromList(List<dynamic> data){
		List<GroupTheme> list = new List();
    data.forEach((item) {
      list.add(GroupTheme.fromJson(item));
    });
    return list;
	}
}