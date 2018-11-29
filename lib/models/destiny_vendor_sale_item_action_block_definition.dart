class DestinyVendorSaleItemActionBlockDefinition{
	int executeSeconds;
	bool isPositive;
	DestinyVendorSaleItemActionBlockDefinition(
		int this.executeSeconds,
		bool this.isPositive,
	);

	static DestinyVendorSaleItemActionBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorSaleItemActionBlockDefinition(
				data['executeSeconds'],
				data['isPositive'],
		);
	}

	static List<DestinyVendorSaleItemActionBlockDefinition> fromList(List<dynamic> data){
		List<DestinyVendorSaleItemActionBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemActionBlockDefinition.fromJson(item));
    });
    return list;
	}
}