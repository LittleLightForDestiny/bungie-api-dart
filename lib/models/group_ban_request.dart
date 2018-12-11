class GroupBanRequest{
	String comment;
	int length;
	GroupBanRequest(
		String this.comment,
		int this.length,
	);

	static GroupBanRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupBanRequest(
				data['comment'],
				data['length'],
		);
	}

	static List<GroupBanRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupBanRequest> list = new List();
    data.forEach((item) {
      list.add(GroupBanRequest.fromJson(item));
    });
    return list;
	}
}