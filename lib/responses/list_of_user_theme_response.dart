import '../models/user_theme.dart';
class ListOfUserThemeResponse{
    List<UserTheme> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfUserThemeResponse(
		List<UserTheme> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfUserThemeResponse fromJson(Map<String, dynamic> data){
		return new ListOfUserThemeResponse(
				UserTheme.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfUserThemeResponse> fromList(List<dynamic> data){
		List<ListOfUserThemeResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfUserThemeResponse.fromJson(item));
    });
    return list;
	}
}