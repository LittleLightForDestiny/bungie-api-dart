class ContentTypeDefaultValue{
	String whenClause;
	String whenValue;
	String defaultValue;
	ContentTypeDefaultValue(
		String this.whenClause,
		String this.whenValue,
		String this.defaultValue,
	);

	static ContentTypeDefaultValue fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypeDefaultValue(
				data['whenClause'],
				data['whenValue'],
				data['defaultValue'],
		);
	}

	static List<ContentTypeDefaultValue> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentTypeDefaultValue> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDefaultValue.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['whenClause'] = whenClause;
			data['whenValue'] = whenValue;
			data['defaultValue'] = defaultValue;
	}
}