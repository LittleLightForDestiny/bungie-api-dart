class Datapoint{
	String time;
	int count;
	Datapoint(
		String this.time,
		int this.count,
	);

	static Datapoint fromJson(Map<String, dynamic> data){
		return new Datapoint(
				data['time'],
				data['count'],
		);
	}

	static List<Datapoint> fromList(List<dynamic> data){
		List<Datapoint> list = new List();
    data.forEach((item) {
      list.add(Datapoint.fromJson(item));
    });
    return list;
	}
}