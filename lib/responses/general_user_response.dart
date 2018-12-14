import '../models/general_user.dart';
class GeneralUserResponse{
    GeneralUser response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GeneralUserResponse(
		GeneralUser this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GeneralUserResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GeneralUserResponse(
				data['Response'] != null ? GeneralUser.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GeneralUserResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(GeneralUserResponse.fromMap(item));
    });
    return list;
	}
}