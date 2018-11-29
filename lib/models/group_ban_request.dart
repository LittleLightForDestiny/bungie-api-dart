class GroupBanRequest{
	String comment;
	int length;
	GroupBanRequest(
		String this.comment,
		int this.length,
	);

	static GroupBanRequest fromJson(Map<String, dynamic> data){
		return new GroupBanRequest(
				data['comment'],
				data['length'],
		);
	}

	static List<GroupBanRequest> fromList(List<dynamic> data){
		List<GroupBanRequest> list = new List();
    data.forEach((item) {
      list.add(GroupBanRequest.fromJson(item));
    });
    return list;
	}
}