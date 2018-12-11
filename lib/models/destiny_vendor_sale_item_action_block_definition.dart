class DestinyVendorSaleItemActionBlockDefinition{
	int executeSeconds;
	bool isPositive;
	DestinyVendorSaleItemActionBlockDefinition(
		int this.executeSeconds,
		bool this.isPositive,
	);

	static DestinyVendorSaleItemActionBlockDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemActionBlockDefinition(
				data['executeSeconds'],
				data['isPositive'],
		);
	}

	static List<DestinyVendorSaleItemActionBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemActionBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemActionBlockDefinition.fromJson(item));
    });
    return list;
	}
}