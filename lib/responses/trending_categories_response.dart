import '../models/trending_categories.dart';
class TrendingCategoriesResponse{
    TrendingCategories response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    TrendingCategoriesResponse(
		TrendingCategories this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static TrendingCategoriesResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<TrendingCategoriesResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingCategoriesResponse.fromJson(item));
    });
    return list;
	}
}