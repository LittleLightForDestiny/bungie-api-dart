import '../models/awa_initialize_response.dart';
class AwaInitializeResponseResponse{
    AwaInitializeResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    AwaInitializeResponseResponse(
		AwaInitializeResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static AwaInitializeResponseResponse fromJson(Map<String, dynamic> data){
		return new AwaInitializeResponseResponse(
				AwaInitializeResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<AwaInitializeResponseResponse> fromList(List<dynamic> data){
		List<AwaInitializeResponseResponse> list = new List();
    data.forEach((item) {
      list.add(AwaInitializeResponseResponse.fromJson(item));
    });
    return list;
	}
}