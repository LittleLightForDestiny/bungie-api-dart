import '../models/destiny_equip_item_results.dart';
class DestinyEquipItemResultsResponse{
    DestinyEquipItemResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyEquipItemResultsResponse(
		DestinyEquipItemResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyEquipItemResultsResponse fromJson(Map<String, dynamic> data){
		return new DestinyEquipItemResultsResponse(
				DestinyEquipItemResults.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyEquipItemResultsResponse> fromList(List<dynamic> data){
		List<DestinyEquipItemResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipItemResultsResponse.fromJson(item));
    });
    return list;
	}
}