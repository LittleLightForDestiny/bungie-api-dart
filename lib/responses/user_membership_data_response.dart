import '../models/user_membership_data.dart';
class UserMembershipDataResponse{
    UserMembershipData Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    UserMembershipDataResponse(
		UserMembershipData this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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