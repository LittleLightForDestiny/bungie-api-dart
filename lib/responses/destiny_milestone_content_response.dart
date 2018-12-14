import '../models/destiny_milestone_content.dart';
class DestinyMilestoneContentResponse{
    DestinyMilestoneContent response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyMilestoneContentResponse(
		DestinyMilestoneContent this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyMilestoneContentResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneContentResponse(
				data['Response'] != null ? DestinyMilestoneContent.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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