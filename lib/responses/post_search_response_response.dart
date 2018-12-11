import '../models/post_search_response.dart';
class PostSearchResponseResponse{
    PostSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    PostSearchResponseResponse(
		PostSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static PostSearchResponseResponse fromJson(Map<String, dynamic> data){
		return new PostSearchResponseResponse(
				PostSearchResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<PostSearchResponseResponse> fromList(List<dynamic> data){
		List<PostSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(PostSearchResponseResponse.fromJson(item));
    });
    return list;
	}
}