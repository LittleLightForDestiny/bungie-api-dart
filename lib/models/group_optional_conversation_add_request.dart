class GroupOptionalConversationAddRequest{
	String chatName;
	int chatSecurity;
	GroupOptionalConversationAddRequest(
		String this.chatName,
		int this.chatSecurity,
	);

	static GroupOptionalConversationAddRequest fromJson(Map<String, dynamic> data){
		return new GroupOptionalConversationAddRequest(
				data['chatName'],
				data['chatSecurity'],
		);
	}

	static List<GroupOptionalConversationAddRequest> fromList(List<dynamic> data){
		List<GroupOptionalConversationAddRequest> list = new List();
    data.forEach((item) {
      list.add(GroupOptionalConversationAddRequest.fromJson(item));
    });
    return list;
	}
}