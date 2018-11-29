import '../models/destiny_equip_item_results.dart';
class DestinyEquipItemResultsResponse{
    DestinyEquipItemResults Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyEquipItemResultsResponse(
		DestinyEquipItemResults this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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