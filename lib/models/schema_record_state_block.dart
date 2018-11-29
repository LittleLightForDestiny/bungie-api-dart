class SchemaRecordStateBlock{
	int featuredPriority;
	String obscuredString;
	SchemaRecordStateBlock(
		int this.featuredPriority,
		String this.obscuredString,
	);

	static SchemaRecordStateBlock fromJson(Map<String, dynamic> data){
		return new SchemaRecordStateBlock(
				data['featuredPriority'],
				data['obscuredString'],
		);
	}

	static List<SchemaRecordStateBlock> fromList(List<dynamic> data){
		List<SchemaRecordStateBlock> list = new List();
    data.forEach((item) {
      list.add(SchemaRecordStateBlock.fromJson(item));
    });
    return list;
	}
}