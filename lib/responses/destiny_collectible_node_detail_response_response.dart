import '../models/destiny_collectible_node_detail_response.dart';
class DestinyCollectibleNodeDetailResponseResponse{
    DestinyCollectibleNodeDetailResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyCollectibleNodeDetailResponseResponse(
		DestinyCollectibleNodeDetailResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyCollectibleNodeDetailResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyCollectibleNodeDetailResponseResponse(
				DestinyCollectibleNodeDetailResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyCollectibleNodeDetailResponseResponse> fromList(List<dynamic> data){
		List<DestinyCollectibleNodeDetailResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleNodeDetailResponseResponse.fromJson(item));
    });
    return list;
	}
}