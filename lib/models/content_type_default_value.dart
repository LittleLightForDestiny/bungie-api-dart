class ContentTypeDefaultValue{
	String whenClause;
	String whenValue;
	String defaultValue;
	ContentTypeDefaultValue(
		String this.whenClause,
		String this.whenValue,
		String this.defaultValue,
	);

	static ContentTypeDefaultValue fromJson(Map<String, dynamic> data){
		return new ContentTypeDefaultValue(
				data['whenClause'],
				data['whenValue'],
				data['defaultValue'],
		);
	}

	static List<ContentTypeDefaultValue> fromList(List<dynamic> data){
		List<ContentTypeDefaultValue> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDefaultValue.fromJson(item));
    });
    return list;
	}
}