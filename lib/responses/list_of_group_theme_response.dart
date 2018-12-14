import '../models/group_theme.dart';
class ListOfGroupThemeResponse{
    List<GroupTheme> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfGroupThemeResponse(
		List<GroupTheme> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGroupThemeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGroupThemeResponse(
				data['Response'] != null ? GroupTheme.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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