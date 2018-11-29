import '../models/global_alert.dart';
class CEListOfGlobalAlertResponse{
    List<GlobalAlert> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CEListOfGlobalAlertResponse(
		List<GlobalAlert> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static CEListOfGlobalAlertResponse fromJson(Map<String, dynamic> data){
		return new CEListOfGlobalAlertResponse(
				GlobalAlert.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfGlobalAlertResponse> fromList(List<dynamic> data){
		List<CEListOfGlobalAlertResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfGlobalAlertResponse.fromJson(item));
    });
    return list;
	}
}