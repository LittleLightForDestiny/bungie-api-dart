class ContentRepresentation{
	String name;
	String path;
	String validationString;
	ContentRepresentation(
		String this.name,
		String this.path,
		String this.validationString,
	);

	static ContentRepresentation fromJson(Map<String, dynamic> data){
		return new ContentRepresentation(
				data['name'],
				data['path'],
				data['validationString'],
		);
	}

	static List<ContentRepresentation> fromList(List<dynamic> data){
		List<ContentRepresentation> list = new List();
    data.forEach((item) {
      list.add(ContentRepresentation.fromJson(item));
    });
    return list;
	}
}