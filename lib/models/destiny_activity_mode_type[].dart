class DestinyActivityModeType[]{
	DestinyActivityModeType[](
	);

	static DestinyActivityModeType[] fromJson(Map<String, dynamic> data){
		return new DestinyActivityModeType[](
		);
	}

	static List<DestinyActivityModeType[]> fromList(List<dynamic> data){
		List<DestinyActivityModeType[]> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModeType[].fromJson(item));
    });
    return list;
	}
}