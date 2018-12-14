import '../models/post_search_response.dart';
class PostSearchResponseResponse{
    PostSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    PostSearchResponseResponse(
		PostSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static PostSearchResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PostSearchResponseResponse(
				data['Response'] != null ? PostSearchResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<PostSearchResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PostSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(PostSearchResponseResponse.fromMap(item));
    });
    return list;
	}
}