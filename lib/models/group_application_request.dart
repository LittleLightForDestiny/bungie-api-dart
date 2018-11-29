class GroupApplicationRequest{
	String message;
	GroupApplicationRequest(
		String this.message,
	);

	static GroupApplicationRequest fromJson(Map<String, dynamic> data){
		return new GroupApplicationRequest(
				data['message'],
		);
	}

	static List<GroupApplicationRequest> fromList(List<dynamic> data){
		List<GroupApplicationRequest> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationRequest.fromJson(item));
    });
    return list;
	}
}