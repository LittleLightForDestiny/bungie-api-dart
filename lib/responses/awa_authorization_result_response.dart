import '../models/awa_authorization_result.dart';
class AwaAuthorizationResultResponse{
    AwaAuthorizationResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    AwaAuthorizationResultResponse(
		AwaAuthorizationResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static AwaAuthorizationResultResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaAuthorizationResultResponse(
				data['Response'] != null ? AwaAuthorizationResult.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<AwaAuthorizationResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaAuthorizationResultResponse> list = new List();
    data.forEach((item) {
      list.add(AwaAuthorizationResultResponse.fromMap(item));
    });
    return list;
	}
}