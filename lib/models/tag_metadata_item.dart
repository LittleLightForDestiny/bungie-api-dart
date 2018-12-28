
/**  */
class TagMetadataItem{
	
	/**  */
	String description;
	
	/**  */
	String tagText;
	
	/**  */
	List<String> groups;
	
	/**  */
	bool isDefault;
	
	/**  */
	String name;
	TagMetadataItem(
		this.description,
		this.tagText,
		this.groups,
		this.isDefault,
		this.name,
	);

	static TagMetadataItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TagMetadataItem(
				data['description'],
				data['tagText'],
				data['groups'] != null ? data['groups']?.cast<String>() ?? null : null,
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
			data['description'] = this.description;
			data['tagText'] = this.tagText;
			data['groups'] = this.groups;
			data['isDefault'] = this.isDefault;
			data['name'] = this.name;
		return data;
	}
}