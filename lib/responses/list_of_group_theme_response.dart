import '../models/group_theme.dart';
class ListOfGroupThemeResponse{
    List<GroupTheme> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfGroupThemeResponse(
		List<GroupTheme> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGroupThemeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGroupThemeResponse(
				GroupTheme.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfGroupThemeResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfGroupThemeResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGroupThemeResponse.fromMap(item));
    });
    return list;
	}
}