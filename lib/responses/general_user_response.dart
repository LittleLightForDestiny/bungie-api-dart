import '../models/general_user.dart';
class GeneralUserResponse{
    GeneralUser Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GeneralUserResponse(
		GeneralUser this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GeneralUserResponse fromJson(Map<String, dynamic> data){
		return new GeneralUserResponse(
				GeneralUser.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GeneralUserResponse> fromList(List<dynamic> data){
		List<GeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(GeneralUserResponse.fromJson(item));
    });
    return list;
	}
}