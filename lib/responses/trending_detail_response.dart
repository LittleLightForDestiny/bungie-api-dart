import '../models/trending_detail.dart';
class TrendingDetailResponse{
    TrendingDetail response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    TrendingDetailResponse(
		TrendingDetail this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static TrendingDetailResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingDetailResponse(
				TrendingDetail.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<TrendingDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingDetailResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingDetailResponse.fromJson(item));
    });
    return list;
	}
}