import '../models/awa_authorization_result.dart';
class AwaAuthorizationResultResponse{
    AwaAuthorizationResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    AwaAuthorizationResultResponse(
		AwaAuthorizationResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static AwaAuthorizationResultResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaAuthorizationResultResponse(
				AwaAuthorizationResult.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<AwaAuthorizationResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaAuthorizationResultResponse> list = new List();
    data.forEach((item) {
      list.add(AwaAuthorizationResultResponse.fromJson(item));
    });
    return list;
	}
}