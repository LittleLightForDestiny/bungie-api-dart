class GroupOptionalConversationEditRequest{
	bool chatEnabled;
	String chatName;
	int chatSecurity;
	GroupOptionalConversationEditRequest(
		bool this.chatEnabled,
		String this.chatName,
		int this.chatSecurity,
	);

	static GroupOptionalConversationEditRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupOptionalConversationEditRequest(
				data['chatEnabled'],
				data['chatName'],
				data['chatSecurity'],
		);
	}

	static List<GroupOptionalConversationEditRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupOptionalConversationEditRequest> list = new List();
    data.forEach((item) {
      list.add(GroupOptionalConversationEditRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['chatEnabled'] = this.chatEnabled;
			data['chatName'] = this.chatName;
			data['chatSecurity'] = this.chatSecurity;
		return data;
	}
}