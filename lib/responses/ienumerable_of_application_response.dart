import '../models/application.dart';
class IEnumerableOfApplicationResponse{
    List<Application> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    IEnumerableOfApplicationResponse(
		List<Application> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static IEnumerableOfApplicationResponse fromJson(Map<String, dynamic> data){
		return new IEnumerableOfApplicationResponse(
				Application.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<IEnumerableOfApplicationResponse> fromList(List<dynamic> data){
		List<IEnumerableOfApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(IEnumerableOfApplicationResponse.fromJson(item));
    });
    return list;
	}
}