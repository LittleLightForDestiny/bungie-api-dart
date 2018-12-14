import '../models/application.dart';
class IEnumerableOfApplicationResponse{
    List<Application> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    IEnumerableOfApplicationResponse(
		List<Application> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static IEnumerableOfApplicationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new IEnumerableOfApplicationResponse(
				data['Response'] != null ? Application.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<IEnumerableOfApplicationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<IEnumerableOfApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(IEnumerableOfApplicationResponse.fromMap(item));
    });
    return list;
	}
}