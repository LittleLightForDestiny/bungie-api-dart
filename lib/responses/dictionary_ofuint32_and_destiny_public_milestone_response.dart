import '../models/destiny_public_milestone.dart';
class DictionaryOfuint32AndDestinyPublicMilestoneResponse{
    Map<String, DestinyPublicMilestone> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DictionaryOfuint32AndDestinyPublicMilestoneResponse(
		Map<String, DestinyPublicMilestone> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DictionaryOfuint32AndDestinyPublicMilestoneResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryOfuint32AndDestinyPublicMilestoneResponse(
				data['Response'] != null ? Map<String, DestinyPublicMilestone>.from(data['Response'].map((k, v)=>MapEntry(k, DestinyPublicMilestone.fromMap(v)))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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