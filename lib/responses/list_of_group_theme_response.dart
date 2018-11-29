import '../models/group_theme.dart';
class ListOfGroupThemeResponse{
    List<GroupTheme> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfGroupThemeResponse(
		List<GroupTheme> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ListOfGroupThemeResponse fromJson(Map<String, dynamic> data){
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
		List<ListOfGroupThemeResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGroupThemeResponse.fromJson(item));
    });
    return list;
	}
}