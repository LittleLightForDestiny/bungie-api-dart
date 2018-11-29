import '../models/destiny_public_milestone.dart';
class DictionaryOfuint32AndDestinyPublicMilestoneResponse{
    Map<DestinyPublicMilestone, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DictionaryOfuint32AndDestinyPublicMilestoneResponse(
		Map<DestinyPublicMilestone, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DictionaryOfuint32AndDestinyPublicMilestoneResponse fromJson(Map<String, dynamic> data){
		return new DictionaryOfuint32AndDestinyPublicMilestoneResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DictionaryOfuint32AndDestinyPublicMilestoneResponse> fromList(List<dynamic> data){
		List<DictionaryOfuint32AndDestinyPublicMilestoneResponse> list = new List();
    data.forEach((item) {
      list.add(DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(item));
    });
    return list;
	}
}