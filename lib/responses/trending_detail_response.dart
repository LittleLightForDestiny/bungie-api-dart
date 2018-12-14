import '../models/trending_detail.dart';
class TrendingDetailResponse{
    TrendingDetail response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    TrendingDetailResponse(
		TrendingDetail this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static TrendingDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingDetailResponse(
				data['Response'] != null ? TrendingDetail.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<TrendingDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingDetailResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingDetailResponse.fromMap(item));
    });
    return list;
	}
}