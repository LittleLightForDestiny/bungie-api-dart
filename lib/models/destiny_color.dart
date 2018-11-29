class DestinyColor{
	String red;
	String green;
	String blue;
	String alpha;
	DestinyColor(
		String this.red,
		String this.green,
		String this.blue,
		String this.alpha,
	);

	static DestinyColor fromJson(Map<String, dynamic> data){
		return new DestinyColor(
				data['red'],
				data['green'],
				data['blue'],
				data['alpha'],
		);
	}

	static List<DestinyColor> fromList(List<dynamic> data){
		List<DestinyColor> list = new List();
    data.forEach((item) {
      list.add(DestinyColor.fromJson(item));
    });
    return list;
	}
}