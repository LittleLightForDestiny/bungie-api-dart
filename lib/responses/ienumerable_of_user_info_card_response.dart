import '../models/user_info_card.dart';
class IEnumerableOfUserInfoCardResponse{
    List<UserInfoCard> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    IEnumerableOfUserInfoCardResponse(
		List<UserInfoCard> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static IEnumerableOfUserInfoCardResponse fromJson(Map<String, dynamic> data){
		return new IEnumerableOfUserInfoCardResponse(
				UserInfoCard.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<IEnumerableOfUserInfoCardResponse> fromList(List<dynamic> data){
		List<IEnumerableOfUserInfoCardResponse> list = new List();
    data.forEach((item) {
      list.add(IEnumerableOfUserInfoCardResponse.fromJson(item));
    });
    return list;
	}
}