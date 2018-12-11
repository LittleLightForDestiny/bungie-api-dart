class InterpolationPointFloat{
	int value;
	int weight;
	InterpolationPointFloat(
		int this.value,
		int this.weight,
	);

	static InterpolationPointFloat fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new InterpolationPointFloat(
				data['value'],
				data['weight'],
		);
	}

	static List<InterpolationPointFloat> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<InterpolationPointFloat> list = new List();
    data.forEach((item) {
      list.add(InterpolationPointFloat.fromJson(item));
    });
    return list;
	}
}