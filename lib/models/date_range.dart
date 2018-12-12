class DateRange{
	String start;
	String end;
	DateRange(
		String this.start,
		String this.end,
	);

	static DateRange fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DateRange(
				data['start'],
				data['end'],
		);
	}

	static List<DateRange> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DateRange> list = new List();
    data.forEach((item) {
      list.add(DateRange.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['start'] = this.start;
			data['end'] = this.end;
		return data;
	}
}