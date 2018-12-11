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

	static TagMetadataItem fromJson(Map<String, dynamic> data){
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
      list.add(TagMetadataItem.fromJson(item));
    });
    return list;
	}
}