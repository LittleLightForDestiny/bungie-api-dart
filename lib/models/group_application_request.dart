
/**  */
class GroupApplicationRequest{
	
	/**  */
	String message;
	GroupApplicationRequest(
		this.message,
	);

	static GroupApplicationRequest fromMap(Map<String, dynamic> data){
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
      list.add(GroupApplicationRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['message'] = this.message;
		return data;
	}
}