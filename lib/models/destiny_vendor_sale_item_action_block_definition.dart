class DestinyVendorSaleItemActionBlockDefinition{
	double executeSeconds;
	bool isPositive;
	DestinyVendorSaleItemActionBlockDefinition(
		this.executeSeconds,
		this.isPositive,
	);

	static DestinyVendorSaleItemActionBlockDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyVendorSaleItemActionBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['executeSeconds'] = this.executeSeconds;
			data['isPositive'] = this.isPositive;
		return data;
	}
}