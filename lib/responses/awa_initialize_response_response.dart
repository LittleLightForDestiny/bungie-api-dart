import '../models/awa_initialize_response.dart';
class AwaInitializeResponseResponse{
    AwaInitializeResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    AwaInitializeResponseResponse(
		AwaInitializeResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static AwaInitializeResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaInitializeResponseResponse(
				data['Response'] != null ? AwaInitializeResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<AwaInitializeResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaInitializeResponseResponse> list = new List();
    data.forEach((item) {
      list.add(AwaInitializeResponseResponse.fromMap(item));
    });
    return list;
	}
}