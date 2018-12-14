import '../models/community_live_status.dart';
class CommunityLiveStatusResponse{
    CommunityLiveStatus response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CommunityLiveStatusResponse(
		CommunityLiveStatus this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CommunityLiveStatusResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CommunityLiveStatusResponse(
				data['Response'] != null ? CommunityLiveStatus.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CommunityLiveStatusResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CommunityLiveStatusResponse> list = new List();
    data.forEach((item) {
      list.add(CommunityLiveStatusResponse.fromMap(item));
    });
    return list;
	}
}