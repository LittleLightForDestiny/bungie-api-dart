import '../models/destiny_collectible_node_detail_response.dart';
class DestinyCollectibleNodeDetailResponseResponse{
    DestinyCollectibleNodeDetailResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyCollectibleNodeDetailResponseResponse(
		DestinyCollectibleNodeDetailResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyCollectibleNodeDetailResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleNodeDetailResponseResponse(
				data['Response'] != null ? DestinyCollectibleNodeDetailResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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