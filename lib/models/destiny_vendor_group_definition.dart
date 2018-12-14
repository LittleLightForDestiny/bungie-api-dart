class DestinyVendorGroupDefinition{
	int order;
	String categoryName;
	int hash;
	int index;
	bool redacted;
	DestinyVendorGroupDefinition(
		this.order,
		this.categoryName,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyVendorGroupDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroupDefinition(
				data['order'],
				data['categoryName'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyVendorGroupDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['order'] = this.order;
			data['categoryName'] = this.categoryName;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}