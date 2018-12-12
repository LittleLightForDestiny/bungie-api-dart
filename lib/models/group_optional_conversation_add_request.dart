class GroupOptionalConversationAddRequest{
	String chatName;
	int chatSecurity;
	GroupOptionalConversationAddRequest(
		String this.chatName,
		int this.chatSecurity,
	);

	static GroupOptionalConversationAddRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupOptionalConversationAddRequest(
				data['chatName'],
				data['chatSecurity'],
		);
	}

	static List<GroupOptionalConversationAddRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupOptionalConversationAddRequest> list = new List();
    data.forEach((item) {
      list.add(GroupOptionalConversationAddRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['chatName'] = this.chatName;
			data['chatSecurity'] = this.chatSecurity;
		return data;
	}
}