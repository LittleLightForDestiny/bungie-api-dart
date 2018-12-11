class GroupOptionalConversationEditRequest{
	bool chatEnabled;
	String chatName;
	int chatSecurity;
	GroupOptionalConversationEditRequest(
		bool this.chatEnabled,
		String this.chatName,
		int this.chatSecurity,
	);

	static GroupOptionalConversationEditRequest fromJson(Map<String, dynamic> data){
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
      list.add(GroupOptionalConversationEditRequest.fromJson(item));
    });
    return list;
	}
}