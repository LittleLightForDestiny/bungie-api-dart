class DestinyVendorServiceDefinition{
	String name;
	DestinyVendorServiceDefinition(
		String this.name,
	);

	static DestinyVendorServiceDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorServiceDefinition(
				data['name'],
		);
	}

	static List<DestinyVendorServiceDefinition> fromList(List<dynamic> data){
		List<DestinyVendorServiceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorServiceDefinition.fromJson(item));
    });
    return list;
	}
}