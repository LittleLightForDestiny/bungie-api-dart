import '../models/destiny_collectible_node_detail_response.dart';
class DestinyCollectibleNodeDetailResponseResponse{
    DestinyCollectibleNodeDetailResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyCollectibleNodeDetailResponseResponse(
		DestinyCollectibleNodeDetailResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyCollectibleNodeDetailResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleNodeDetailResponseResponse(
				DestinyCollectibleNodeDetailResponse.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyCollectibleNodeDetailResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleNodeDetailResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleNodeDetailResponseResponse.fromMap(item));
    });
    return list;
	}
}