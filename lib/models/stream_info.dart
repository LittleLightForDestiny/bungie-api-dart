
/**  */
class StreamInfo{
	
	/**  */
	String channelName;
	StreamInfo(
		this.channelName,
	);

	static StreamInfo fromMap(Map<String, dynamic> data){
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
      list.add(StreamInfo.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['ChannelName'] = this.channelName;
		return data;
	}
}