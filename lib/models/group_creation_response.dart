class GroupCreationResponse{
	int groupId;
	GroupCreationResponse(
		int this.groupId,
	);

	static GroupCreationResponse fromJson(Map<String, dynamic> data){
		return new GroupCreationResponse(
				data['groupId'],
		);
	}

	static List<GroupCreationResponse> fromList(List<dynamic> data){
		List<GroupCreationResponse> list = new List();
    data.forEach((item) {
      list.add(GroupCreationResponse.fromJson(item));
    });
    return list;
	}
}