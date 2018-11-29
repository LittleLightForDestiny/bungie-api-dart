class DateRange{
	String start;
	String end;
	DateRange(
		String this.start,
		String this.end,
	);

	static DateRange fromJson(Map<String, dynamic> data){
		return new DateRange(
				data['start'],
				data['end'],
		);
	}

	static List<DateRange> fromList(List<dynamic> data){
		List<DateRange> list = new List();
    data.forEach((item) {
      list.add(DateRange.fromJson(item));
    });
    return list;
	}
}