import '../models/user_info_card.dart';
class IEnumerableOfUserInfoCardResponse{
    List<UserInfoCard> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    IEnumerableOfUserInfoCardResponse(
		List<UserInfoCard> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static IEnumerableOfUserInfoCardResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new IEnumerableOfUserInfoCardResponse(
				data['Response'] != null ? UserInfoCard.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<IEnumerableOfUserInfoCardResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<IEnumerableOfUserInfoCardResponse> list = new List();
    data.forEach((item) {
      list.add(IEnumerableOfUserInfoCardResponse.fromMap(item));
    });
    return list;
	}
}