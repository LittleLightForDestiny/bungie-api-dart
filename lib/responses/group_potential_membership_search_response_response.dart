import '../models/group_potential_membership_search_response.dart';
class GroupPotentialMembershipSearchResponseResponse{
    GroupPotentialMembershipSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GroupPotentialMembershipSearchResponseResponse(
		GroupPotentialMembershipSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupPotentialMembershipSearchResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMembershipSearchResponseResponse(
				data['Response'] != null ? GroupPotentialMembershipSearchResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupPotentialMembershipSearchResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupPotentialMembershipSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMembershipSearchResponseResponse.fromMap(item));
    });
    return list;
	}
}