import '../models/destiny_milestone.dart';
class DestinyMilestoneResponse{
    DestinyMilestone response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyMilestoneResponse(
		DestinyMilestone this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyMilestoneResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneResponse(
				data['Response'] != null ? DestinyMilestone.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyMilestoneResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneResponse.fromMap(item));
    });
    return list;
	}
}