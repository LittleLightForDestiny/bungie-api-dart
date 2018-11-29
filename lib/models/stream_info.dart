class StreamInfo{
	String ChannelName;
	StreamInfo(
		String this.ChannelName,
	);

	static StreamInfo fromJson(Map<String, dynamic> data){
		return new StreamInfo(
				data['ChannelName'],
		);
	}

	static List<StreamInfo> fromList(List<dynamic> data){
		List<StreamInfo> list = new List();
    data.forEach((item) {
      list.add(StreamInfo.fromJson(item));
    });
    return list;
	}
}