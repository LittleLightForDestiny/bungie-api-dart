import '../models/general_user.dart';
class ListOfGeneralUserResponse{
    List<GeneralUser> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfGeneralUserResponse(
		List<GeneralUser> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ListOfGeneralUserResponse fromJson(Map<String, dynamic> data){
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
		List<ListOfGeneralUserResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGeneralUserResponse.fromJson(item));
    });
    return list;
	}
}