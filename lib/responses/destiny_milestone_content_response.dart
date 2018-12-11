import '../models/destiny_milestone_content.dart';
class DestinyMilestoneContentResponse{
    DestinyMilestoneContent response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyMilestoneContentResponse(
		DestinyMilestoneContent this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyMilestoneContentResponse fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneContentResponse(
				DestinyMilestoneContent.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyMilestoneContentResponse> fromList(List<dynamic> data){
		List<DestinyMilestoneContentResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneContentResponse.fromJson(item));
    });
    return list;
	}
}