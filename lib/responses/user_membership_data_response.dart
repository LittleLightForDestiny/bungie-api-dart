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

    static UserMembershipDataResponse fromJson(Map<String, dynamic> data){
		return new UserMembershipDataResponse(
				UserMembershipData.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<UserMembershipDataResponse> fromList(List<dynamic> data){
		List<UserMembershipDataResponse> list = new List();
    data.forEach((item) {
      list.add(UserMembershipDataResponse.fromJson(item));
    });
    return list;
	}
}