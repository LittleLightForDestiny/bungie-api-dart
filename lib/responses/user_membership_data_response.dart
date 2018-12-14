import '../models/user_membership_data.dart';
class UserMembershipDataResponse{
    UserMembershipData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    UserMembershipDataResponse(
		UserMembershipData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static UserMembershipDataResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserMembershipDataResponse(
				data['Response'] != null ? UserMembershipData.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<UserMembershipDataResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserMembershipDataResponse> list = new List();
    data.forEach((item) {
      list.add(UserMembershipDataResponse.fromMap(item));
    });
    return list;
	}
}