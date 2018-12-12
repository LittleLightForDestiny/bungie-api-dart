import '../models/user_membership_data.dart';
class UserMembershipDataResponse{
    UserMembershipData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    UserMembershipDataResponse(
		UserMembershipData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static UserMembershipDataResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserMembershipDataResponse(
				UserMembershipData.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
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