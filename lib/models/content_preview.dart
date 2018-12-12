class ContentPreview{
	String name;
	String path;
	bool itemInSet;
	String setTag;
	int setNesting;
	int useSetId;
	ContentPreview(
		String this.name,
		String this.path,
		bool this.itemInSet,
		String this.setTag,
		int this.setNesting,
		int this.useSetId,
	);

	static ContentPreview fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentPreview(
				data['name'],
				data['path'],
				data['itemInSet'],
				data['setTag'],
				data['setNesting'],
				data['useSetId'],
		);
	}

	static List<ContentPreview> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentPreview> list = new List();
    data.forEach((item) {
      list.add(ContentPreview.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
			data['path'] = this.path;
			data['itemInSet'] = this.itemInSet;
			data['setTag'] = this.setTag;
			data['setNesting'] = this.setNesting;
			data['useSetId'] = this.useSetId;
		return data;
	}
}