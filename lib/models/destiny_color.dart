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

	static DestinyColor fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyColor(
				data['red'],
				data['green'],
				data['blue'],
				data['alpha'],
		);
	}

	static List<DestinyColor> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyColor> list = new List();
    data.forEach((item) {
      list.add(DestinyColor.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['red'] = red;
			data['green'] = green;
			data['blue'] = blue;
			data['alpha'] = alpha;
	}
}