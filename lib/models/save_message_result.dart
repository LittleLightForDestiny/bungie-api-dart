class SaveMessageResult{
	int conversationId;
	int messageId;
	SaveMessageResult(
		int this.conversationId,
		int this.messageId,
	);

	static SaveMessageResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SaveMessageResult(
				data['conversationId'],
				data['messageId'],
		);
	}

	static List<SaveMessageResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SaveMessageResult> list = new List();
    data.forEach((item) {
      list.add(SaveMessageResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['conversationId'] = conversationId;
			data['messageId'] = messageId;
	}
}