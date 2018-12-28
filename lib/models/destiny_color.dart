
/** Represents a color whose RGBA values are all represented as values between 0 and 255. */
class DestinyColor{
	
	/**  */
	int red;
	
	/**  */
	int green;
	
	/**  */
	int blue;
	
	/**  */
	int alpha;
	DestinyColor(
		this.red,
		this.green,
		this.blue,
		this.alpha,
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
			data['red'] = this.red;
			data['green'] = this.green;
			data['blue'] = this.blue;
			data['alpha'] = this.alpha;
		return data;
	}
}