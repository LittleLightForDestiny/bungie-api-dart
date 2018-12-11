class DestinyCurrenciesComponent{
	Map<int, dynamic> itemQuantities;
	DestinyCurrenciesComponent(
		Map<int, dynamic> this.itemQuantities,
	);

	static DestinyCurrenciesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCurrenciesComponent(
				data['itemQuantities'],
		);
	}

	static List<DestinyCurrenciesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCurrenciesComponent.fromJson(item));
    });
    return list;
	}
}