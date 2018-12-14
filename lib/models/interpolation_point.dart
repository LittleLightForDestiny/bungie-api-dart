class InterpolationPoint{
	int value;
	int weight;
	InterpolationPoint(
		this.value,
		this.weight,
	);

	static InterpolationPoint fromMap(Map<String, dynamic> data){
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
      list.add(InterpolationPoint.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['value'] = this.value;
			data['weight'] = this.weight;
		return data;
	}
}