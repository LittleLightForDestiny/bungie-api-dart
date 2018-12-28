
/**  */
class DestinyRecordTitleBlock{
	
	/**  */
	bool hasTitle;
	
	/**  */
	Map<String, String> titlesByGender;
	
	/** For those who prefer to use the definitions. */
	Map<String, String> titlesByGenderHash;
	DestinyRecordTitleBlock(
		this.hasTitle,
		this.titlesByGender,
		this.titlesByGenderHash,
	);

	static DestinyRecordTitleBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordTitleBlock(
				data['hasTitle'],
				data['titlesByGender'] != null ? Map<String, String>.from(data['titlesByGender'].map((k, v)=>MapEntry(k, v))) : null,
				data['titlesByGenderHash'] != null ? Map<String, String>.from(data['titlesByGenderHash'].map((k, v)=>MapEntry(k, v))) : null,
		);
	}

	static List<DestinyRecordTitleBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordTitleBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordTitleBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hasTitle'] = this.hasTitle;
			data['titlesByGender'] = this.titlesByGender;
			data['titlesByGenderHash'] = this.titlesByGenderHash;
		return data;
	}
}