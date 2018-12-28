
/*  */
class GroupCreationResponse{
	
	/*  */
	String groupId;
	GroupCreationResponse(
		this.groupId,
	);

	static GroupCreationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupCreationResponse(
				data['groupId'],
		);
	}

	static List<GroupCreationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupCreationResponse> list = new List();
    data.forEach((item) {
      list.add(GroupCreationResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
		return data;
	}
}