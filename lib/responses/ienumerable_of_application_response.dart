import '../models/application.dart';
class IEnumerableOfApplicationResponse{
    List<Application> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    IEnumerableOfApplicationResponse(
		List<Application> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static IEnumerableOfApplicationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new IEnumerableOfApplicationResponse(
				Application.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
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