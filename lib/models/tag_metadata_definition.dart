import 'tag_metadata_item.dart';
class TagMetadataDefinition{
	String description;
	int order;
	List<TagMetadataItem> items;
	String datatype;
	String name;
	bool isRequired;
	TagMetadataDefinition(
		String this.description,
		int this.order,
		List<TagMetadataItem> this.items,
		String this.datatype,
		String this.name,
		bool this.isRequired,
	);

	static TagMetadataDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TagMetadataDefinition(
				data['description'],
				data['order'],
				TagMetadataItem.fromList(data['items']),
				data['datatype'],
				data['name'],
				data['isRequired'],
		);
	}

	static List<TagMetadataDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TagMetadataDefinition> list = new List();
    data.forEach((item) {
      list.add(TagMetadataDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = this.description;
			data['order'] = this.order;
			data['items'] = this.items.map((item)=>item.toMap());
			data['datatype'] = this.datatype;
			data['name'] = this.name;
			data['isRequired'] = this.isRequired;
		return data;
	}
}