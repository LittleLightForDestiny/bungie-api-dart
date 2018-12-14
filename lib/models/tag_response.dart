import 'ignore_response.dart';
class TagResponse{
	String tagText;
	IgnoreResponse ignoreStatus;
	TagResponse(
		this.tagText,
		this.ignoreStatus,
	);

	static TagResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TagResponse(
				data['tagText'],
				data['ignoreStatus'] != null ? IgnoreResponse.fromMap(data['ignoreStatus']) : null,
		);
	}

	static List<TagResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TagResponse> list = new List();
    data.forEach((item) {
      list.add(TagResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['tagText'] = this.tagText;
			data['ignoreStatus'] = this.ignoreStatus.toMap();
		return data;
	}
}