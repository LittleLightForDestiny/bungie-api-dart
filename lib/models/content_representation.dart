
/*  */
class ContentRepresentation{
	
	/*  */
	String name;
	
	/*  */
	String path;
	
	/*  */
	String validationString;
	ContentRepresentation(
		this.name,
		this.path,
		this.validationString,
	);

	static ContentRepresentation fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentRepresentation(
				data['name'],
				data['path'],
				data['validationString'],
		);
	}

	static List<ContentRepresentation> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentRepresentation> list = new List();
    data.forEach((item) {
      list.add(ContentRepresentation.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
			data['path'] = this.path;
			data['validationString'] = this.validationString;
		return data;
	}
}