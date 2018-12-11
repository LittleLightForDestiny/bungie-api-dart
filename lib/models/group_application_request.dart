class GroupApplicationRequest{
	String message;
	GroupApplicationRequest(
		String this.message,
	);

	static GroupApplicationRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupApplicationRequest(
				data['message'],
		);
	}

	static List<GroupApplicationRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupApplicationRequest> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationRequest.fromJson(item));
    });
    return list;
	}
}