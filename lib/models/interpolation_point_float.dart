
/**  */
class InterpolationPointFloat{
	
	/**  */
	double value;
	
	/**  */
	double weight;
	InterpolationPointFloat(
		this.value,
		this.weight,
	);

	static InterpolationPointFloat fromMap(Map<String, dynamic> data){
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
      list.add(InterpolationPointFloat.fromMap(item));
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