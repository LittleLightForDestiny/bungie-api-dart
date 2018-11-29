import '../models/destiny_milestone_content.dart';
class DestinyMilestoneContentResponse{
    DestinyMilestoneContent Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyMilestoneContentResponse(
		DestinyMilestoneContent this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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