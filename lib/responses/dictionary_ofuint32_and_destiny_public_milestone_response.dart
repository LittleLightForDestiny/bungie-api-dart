import '../models/destiny_public_milestone.dart';
class DictionaryOfuint32AndDestinyPublicMilestoneResponse{
    Map<DestinyPublicMilestone, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DictionaryOfuint32AndDestinyPublicMilestoneResponse(
		Map<DestinyPublicMilestone, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DictionaryOfuint32AndDestinyPublicMilestoneResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DictionaryOfuint32AndDestinyPublicMilestoneResponse> list = new List();
    data.forEach((item) {
      list.add(DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromMap(item));
    });
    return list;
	}
}