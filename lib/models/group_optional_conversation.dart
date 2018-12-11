class GroupOptionalConversation{
	int groupId;
	int conversationId;
	bool chatEnabled;
	String chatName;
	int chatSecurity;
	GroupOptionalConversation(
		int this.groupId,
		int this.conversationId,
		bool this.chatEnabled,
		String this.chatName,
		int this.chatSecurity,
	);

	static GroupOptionalConversation fromJson(Map<String, dynamic> data){
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
      list.add(GroupOptionalConversation.fromJson(item));
    });
    return list;
	}
}