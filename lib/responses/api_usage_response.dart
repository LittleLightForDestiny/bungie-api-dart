import '../models/api_usage.dart';
class ApiUsageResponse{
    ApiUsage response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ApiUsageResponse(
		ApiUsage this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ApiUsageResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ApiUsageResponse(
				data['Response'] != null ? ApiUsage.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ApiUsageResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ApiUsageResponse> list = new List();
    data.forEach((item) {
      list.add(ApiUsageResponse.fromMap(item));
    });
    return list;
	}
}