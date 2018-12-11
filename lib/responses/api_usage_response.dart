import '../models/api_usage.dart';
class ApiUsageResponse{
    ApiUsage response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ApiUsageResponse(
		ApiUsage this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ApiUsageResponse fromJson(Map<String, dynamic> data){
		return new ApiUsageResponse(
				ApiUsage.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ApiUsageResponse> fromList(List<dynamic> data){
		List<ApiUsageResponse> list = new List();
    data.forEach((item) {
      list.add(ApiUsageResponse.fromJson(item));
    });
    return list;
	}
}