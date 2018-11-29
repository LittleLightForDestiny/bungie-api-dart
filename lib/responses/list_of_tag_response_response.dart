import '../models/tag_response.dart';
class ListOfTagResponseResponse{
    List<TagResponse> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfTagResponseResponse(
		List<TagResponse> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ListOfTagResponseResponse fromJson(Map<String, dynamic> data){
		return new ListOfTagResponseResponse(
				TagResponse.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfTagResponseResponse> fromList(List<dynamic> data){
		List<ListOfTagResponseResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfTagResponseResponse.fromJson(item));
    });
    return list;
	}
}