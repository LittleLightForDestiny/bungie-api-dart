import '../models/destiny_milestone.dart';
class DestinyMilestoneResponse{
    DestinyMilestone response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyMilestoneResponse(
		DestinyMilestone this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyMilestoneResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneResponse(
				DestinyMilestone.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyMilestoneResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneResponse.fromJson(item));
    });
    return list;
	}
}