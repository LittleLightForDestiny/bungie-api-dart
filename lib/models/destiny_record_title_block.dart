class DestinyRecordTitleBlock{
	bool hasTitle;
	Map<String, dynamic> titlesByGender;
	DestinyRecordTitleBlock(
		bool this.hasTitle,
		Map<String, dynamic> this.titlesByGender,
	);

	static DestinyRecordTitleBlock fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordTitleBlock(
				data['hasTitle'],
				data['titlesByGender'],
		);
	}

	static List<DestinyRecordTitleBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordTitleBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordTitleBlock.fromJson(item));
    });
    return list;
	}
}