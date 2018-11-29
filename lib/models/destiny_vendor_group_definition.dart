class DestinyVendorGroupDefinition{
	int order;
	String categoryName;
	int hash;
	int index;
	bool redacted;
	DestinyVendorGroupDefinition(
		int this.order,
		String this.categoryName,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyVendorGroupDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorGroupDefinition(
				data['order'],
				data['categoryName'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyVendorGroupDefinition> fromList(List<dynamic> data){
		List<DestinyVendorGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupDefinition.fromJson(item));
    });
    return list;
	}
}