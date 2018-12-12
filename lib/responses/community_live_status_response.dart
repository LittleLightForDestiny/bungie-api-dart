import '../models/community_live_status.dart';
class CommunityLiveStatusResponse{
    CommunityLiveStatus response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CommunityLiveStatusResponse(
		CommunityLiveStatus this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CommunityLiveStatusResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CommunityLiveStatusResponse(
				CommunityLiveStatus.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
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