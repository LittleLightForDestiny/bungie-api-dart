import '../models/community_live_status.dart';
class CommunityLiveStatusResponse{
    CommunityLiveStatus Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CommunityLiveStatusResponse(
		CommunityLiveStatus this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static CommunityLiveStatusResponse fromJson(Map<String, dynamic> data){
		return new CommunityLiveStatusResponse(
				CommunityLiveStatus.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CommunityLiveStatusResponse> fromList(List<dynamic> data){
		List<CommunityLiveStatusResponse> list = new List();
    data.forEach((item) {
      list.add(CommunityLiveStatusResponse.fromJson(item));
    });
    return list;
	}
}