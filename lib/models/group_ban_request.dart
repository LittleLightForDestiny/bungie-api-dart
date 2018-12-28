
/**  */
class GroupBanRequest{
	
	/**  */
	String comment;
	
	/**  */
	int length;
	GroupBanRequest(
		this.comment,
		this.length,
	);

	static GroupBanRequest fromMap(Map<String, dynamic> data){
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
      list.add(GroupBanRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['comment'] = this.comment;
			data['length'] = this.length;
		return data;
	}
}