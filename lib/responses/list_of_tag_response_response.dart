import '../models/tag_response.dart';
class ListOfTagResponseResponse{
    List<TagResponse> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfTagResponseResponse(
		List<TagResponse> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfTagResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfTagResponseResponse(
				data['Response'] != null ? TagResponse.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfTagResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfTagResponseResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfTagResponseResponse.fromMap(item));
    });
    return list;
	}
}