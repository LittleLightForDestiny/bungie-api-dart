class GroupApplicationResponse{
	int resolution;
	GroupApplicationResponse(
		int this.resolution,
	);

	static GroupApplicationResponse fromJson(Map<String, dynamic> data){
		return new GroupApplicationResponse(
				data['resolution'],
		);
	}

	static List<GroupApplicationResponse> fromList(List<dynamic> data){
		List<GroupApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationResponse.fromJson(item));
    });
    return list;
	}
}