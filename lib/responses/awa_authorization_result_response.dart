import '../models/awa_authorization_result.dart';
class AwaAuthorizationResultResponse{
    AwaAuthorizationResult Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    AwaAuthorizationResultResponse(
		AwaAuthorizationResult this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static AwaAuthorizationResultResponse fromJson(Map<String, dynamic> data){
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
		List<AwaAuthorizationResultResponse> list = new List();
    data.forEach((item) {
      list.add(AwaAuthorizationResultResponse.fromJson(item));
    });
    return list;
	}
}