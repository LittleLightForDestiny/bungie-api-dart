import '../models/trending_categories.dart';
class TrendingCategoriesResponse{
    TrendingCategories response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    TrendingCategoriesResponse(
		TrendingCategories this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static TrendingCategoriesResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingCategoriesResponse(
				data['Response'] != null ? TrendingCategories.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<TrendingCategoriesResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingCategoriesResponse> list = new List();
    data.forEach((item) {
      list.add(TrendingCategoriesResponse.fromMap(item));
    });
    return list;
	}
}