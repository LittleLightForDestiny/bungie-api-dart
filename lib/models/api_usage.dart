import 'date_range.dart';
import 'series.dart';
import 'series.dart';
class ApiUsage{
	DateRange range;
	List<Series> apiCalls;
	List<Series> throttledRequests;
	ApiUsage(
		DateRange this.range,
		List<Series> this.apiCalls,
		List<Series> this.throttledRequests,
	);

	static ApiUsage fromJson(Map<String, dynamic> data){
		return new ApiUsage(
				data['range'],
				Series.fromList(data['apiCalls']),
				Series.fromList(data['throttledRequests']),
		);
	}

	static List<ApiUsage> fromList(List<dynamic> data){
		List<ApiUsage> list = new List();
    data.forEach((item) {
      list.add(ApiUsage.fromJson(item));
    });
    return list;
	}
}