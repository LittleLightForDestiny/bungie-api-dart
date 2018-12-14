import '../models/global_alert.dart';
class CEListOfGlobalAlertResponse{
    List<GlobalAlert> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CEListOfGlobalAlertResponse(
		List<GlobalAlert> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfGlobalAlertResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEListOfGlobalAlertResponse(
				data['Response'] != null ? GlobalAlert.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfGlobalAlertResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CEListOfGlobalAlertResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfGlobalAlertResponse.fromMap(item));
    });
    return list;
	}
}