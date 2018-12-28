
/* When a vendor provides services, this is the localized name of those services. */
class DestinyVendorServiceDefinition{
	
	/* The localized name of a service provided. */
	String name;
	DestinyVendorServiceDefinition(
		this.name,
	);

	static DestinyVendorServiceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorServiceDefinition(
				data['name'],
		);
	}

	static List<DestinyVendorServiceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorServiceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorServiceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
		return data;
	}
}