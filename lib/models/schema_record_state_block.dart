class SchemaRecordStateBlock{
	int featuredPriority;
	String obscuredString;
	SchemaRecordStateBlock(
		int this.featuredPriority,
		String this.obscuredString,
	);

	static SchemaRecordStateBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SchemaRecordStateBlock(
				data['featuredPriority'],
				data['obscuredString'],
		);
	}

	static List<SchemaRecordStateBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SchemaRecordStateBlock> list = new List();
    data.forEach((item) {
      list.add(SchemaRecordStateBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['featuredPriority'] = this.featuredPriority;
			data['obscuredString'] = this.obscuredString;
		return data;
	}
}