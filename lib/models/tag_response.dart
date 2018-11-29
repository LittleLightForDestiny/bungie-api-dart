import 'ignore_response.dart';
class TagResponse{
	String tagText;
	IgnoreResponse ignoreStatus;
	TagResponse(
		String this.tagText,
		IgnoreResponse this.ignoreStatus,
	);

	static TagResponse fromJson(Map<String, dynamic> data){
		return new TagResponse(
				data['tagText'],
				IgnoreResponse.fromJson(data['ignoreStatus']),
		);
	}

	static List<TagResponse> fromList(List<dynamic> data){
		List<TagResponse> list = new List();
    data.forEach((item) {
      list.add(TagResponse.fromJson(item));
    });
    return list;
	}
}