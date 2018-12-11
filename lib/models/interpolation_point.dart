class InterpolationPoint{
	int value;
	int weight;
	InterpolationPoint(
		int this.value,
		int this.weight,
	);

	static InterpolationPoint fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new InterpolationPoint(
				data['value'],
				data['weight'],
		);
	}

	static List<InterpolationPoint> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<InterpolationPoint> list = new List();
    data.forEach((item) {
      list.add(InterpolationPoint.fromJson(item));
    });
    return list;
	}
}