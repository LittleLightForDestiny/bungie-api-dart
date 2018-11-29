import '../models/trending_categories.dart';
class TrendingCategoriesResponse{
    TrendingCategories Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    TrendingCategoriesResponse(
		TrendingCategories this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static TrendingCategoriesResponse fromJson(Map<String, dynamic> data){
		return new TrendingCategoriesResponse(
				TrendingCategories.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<TrendingCategoriesResponse> fromList(List<dynamic> data){
		List<TrendingCategoriesResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingCategoriesResponse.fromJson(item));
    });
    return list;
	}
}