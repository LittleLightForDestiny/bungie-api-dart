import '../models/general_user.dart';
class ListOfGeneralUserResponse{
    List<GeneralUser> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfGeneralUserResponse(
		List<GeneralUser> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGeneralUserResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGeneralUserResponse(
				GeneralUser.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfGeneralUserResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfGeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGeneralUserResponse.fromJson(item));
    });
    return list;
	}
}