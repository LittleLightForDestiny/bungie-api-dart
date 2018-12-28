
/**  */
class GroupNameSearchRequest{
	
	/**  */
	String groupName;
	
	/**  */
	int groupType;
	GroupNameSearchRequest(
		this.groupName,
		this.groupType,
	);

	static GroupNameSearchRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupNameSearchRequest(
				data['groupName'],
				data['groupType'],
		);
	}

	static List<GroupNameSearchRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupNameSearchRequest> list = new List();
    data.forEach((item) {
      list.add(GroupNameSearchRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupName'] = this.groupName;
			data['groupType'] = this.groupType;
		return data;
	}
}