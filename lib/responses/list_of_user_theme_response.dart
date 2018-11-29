import '../models/user_theme.dart';
class ListOfUserThemeResponse{
    List<UserTheme> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfUserThemeResponse(
		List<UserTheme> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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