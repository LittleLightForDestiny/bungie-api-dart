class DestinyCurrenciesComponent{
	Map<String, int> itemQuantities;
	DestinyCurrenciesComponent(
		this.itemQuantities,
	);

	static DestinyCurrenciesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCurrenciesComponent(
				data['itemQuantities'] != null ? Map<String, int>.from(data['itemQuantities'].map((k, v)=>MapEntry(k, v))) : null,
		);
	}

	static List<DestinyCurrenciesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCurrenciesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemQuantities'] = this.itemQuantities;
		return data;
	}
}