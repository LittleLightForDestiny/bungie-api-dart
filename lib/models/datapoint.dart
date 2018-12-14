class Datapoint{
	String time;
	int count;
	Datapoint(
		this.time,
		this.count,
	);

	static Datapoint fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new Datapoint(
				data['time'],
				data['count'],
		);
	}

	static List<Datapoint> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<Datapoint> list = new List();
    data.forEach((item) {
      list.add(Datapoint.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['time'] = this.time;
			data['count'] = this.count;
		return data;
	}
}