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

	static ContentPreview fromJson(Map<String, dynamic> data){
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
      list.add(ContentPreview.fromJson(item));
    });
    return list;
	}
}