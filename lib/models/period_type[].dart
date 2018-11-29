class PeriodType[]{
	PeriodType[](
	);

	static PeriodType[] fromJson(Map<String, dynamic> data){
		return new PeriodType[](
		);
	}

	static List<PeriodType[]> fromList(List<dynamic> data){
		List<PeriodType[]> list = new List();
    data.forEach((item) {
      list.add(PeriodType[].fromJson(item));
    });
    return list;
	}
}