import '../models/awa_initialize_response.dart';
class AwaInitializeResponseResponse{
    AwaInitializeResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    AwaInitializeResponseResponse(
		AwaInitializeResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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