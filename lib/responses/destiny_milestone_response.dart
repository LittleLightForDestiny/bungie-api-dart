import '../models/destiny_milestone.dart';
class DestinyMilestoneResponse{
    DestinyMilestone Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyMilestoneResponse(
		DestinyMilestone this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyMilestoneResponse fromJson(Map<String, dynamic> data){
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
		List<DestinyMilestoneResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneResponse.fromJson(item));
    });
    return list;
	}
}