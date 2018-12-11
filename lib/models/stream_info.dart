class StreamInfo{
	String channelName;
	StreamInfo(
		String this.channelName,
	);

	static StreamInfo fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new StreamInfo(
				data['ChannelName'],
		);
	}

	static List<StreamInfo> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<StreamInfo> list = new List();
    data.forEach((item) {
      list.add(StreamInfo.fromJson(item));
    });
    return list;
	}
}