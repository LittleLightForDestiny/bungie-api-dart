class ContentTypePropertySection{
	String name;
	String readableName;
	bool collapsed;
	ContentTypePropertySection(
		String this.name,
		String this.readableName,
		bool this.collapsed,
	);

	static ContentTypePropertySection fromJson(Map<String, dynamic> data){
		return new ContentTypePropertySection(
				data['name'],
				data['readableName'],
				data['collapsed'],
		);
	}

	static List<ContentTypePropertySection> fromList(List<dynamic> data){
		List<ContentTypePropertySection> list = new List();
    data.forEach((item) {
      list.add(ContentTypePropertySection.fromJson(item));
    });
    return list;
	}
}