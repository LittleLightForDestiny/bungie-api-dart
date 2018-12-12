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

    static DestinyMilestoneContentResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneContentResponse(
				DestinyMilestoneContent.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyMilestoneContentResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneContentResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneContentResponse.fromMap(item));
    });
    return list;
	}
}