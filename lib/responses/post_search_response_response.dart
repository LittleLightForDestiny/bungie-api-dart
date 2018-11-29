import '../models/post_search_response.dart';
class PostSearchResponseResponse{
    PostSearchResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    PostSearchResponseResponse(
		PostSearchResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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