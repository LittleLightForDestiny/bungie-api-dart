import '../models/general_user.dart';
class GeneralUserResponse{
    GeneralUser response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GeneralUserResponse(
		GeneralUser this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GeneralUserResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<GeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(GeneralUserResponse.fromJson(item));
    });
    return list;
	}
}