
/**  */
class GroupApplicationResponse{
	
	/**  */
	int resolution;
	GroupApplicationResponse(
		this.resolution,
	);

	static GroupApplicationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupApplicationResponse(
				data['resolution'],
		);
	}

	static List<GroupApplicationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['resolution'] = this.resolution;
		return data;
	}
}