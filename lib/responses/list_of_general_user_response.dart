import '../models/general_user.dart';
class ListOfGeneralUserResponse{
    List<GeneralUser> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfGeneralUserResponse(
		List<GeneralUser> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGeneralUserResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGeneralUserResponse(
				data['Response'] != null ? GeneralUser.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfGeneralUserResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfGeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGeneralUserResponse.fromMap(item));
    });
    return list;
	}
}