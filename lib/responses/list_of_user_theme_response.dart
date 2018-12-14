import '../models/user_theme.dart';
class ListOfUserThemeResponse{
    List<UserTheme> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfUserThemeResponse(
		List<UserTheme> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfUserThemeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfUserThemeResponse(
				data['Response'] != null ? UserTheme.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfUserThemeResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfUserThemeResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfUserThemeResponse.fromMap(item));
    });
    return list;
	}
}