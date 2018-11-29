import '../models/api_usage.dart';
class ApiUsageResponse{
    ApiUsage Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ApiUsageResponse(
		ApiUsage this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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