class TagMetadataItem{
	String description;
	String tagText;
	List<String> groups;
	bool isDefault;
	String name;
	TagMetadataItem(
		String this.description,
		String this.tagText,
		List<String> this.groups,
		bool this.isDefault,
		String this.name,
	);

	static TagMetadataItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TagMetadataItem(
				data['description'],
				data['tagText'],
				data['groups'],
				data['isDefault'],
				data['name'],
		);
	}

	static List<TagMetadataItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TagMetadataItem> list = new List();
    data.forEach((item) {
      list.add(TagMetadataItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = description;
			data['tagText'] = tagText;
			data['groups'] = groups;
			data['isDefault'] = isDefault;
			data['name'] = name;
	}
}