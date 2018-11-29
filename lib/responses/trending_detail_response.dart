import '../models/trending_detail.dart';
class TrendingDetailResponse{
    TrendingDetail Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    TrendingDetailResponse(
		TrendingDetail this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static TrendingDetailResponse fromJson(Map<String, dynamic> data){
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
		List<TrendingDetailResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingDetailResponse.fromJson(item));
    });
    return list;
	}
}