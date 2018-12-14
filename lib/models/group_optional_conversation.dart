class GroupOptionalConversation{
	String groupId;
	String conversationId;
	bool chatEnabled;
	String chatName;
	int chatSecurity;
	GroupOptionalConversation(
		this.groupId,
		this.conversationId,
		this.chatEnabled,
		this.chatName,
		this.chatSecurity,
	);

	static GroupOptionalConversation fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupOptionalConversation(
				data['groupId'],
				data['conversationId'],
				data['chatEnabled'],
				data['chatName'],
				data['chatSecurity'],
		);
	}

	static List<GroupOptionalConversation> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupOptionalConversation> list = new List();
    data.forEach((item) {
      list.add(GroupOptionalConversation.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['conversationId'] = this.conversationId;
			data['chatEnabled'] = this.chatEnabled;
			data['chatName'] = this.chatName;
			data['chatSecurity'] = this.chatSecurity;
		return data;
	}
}