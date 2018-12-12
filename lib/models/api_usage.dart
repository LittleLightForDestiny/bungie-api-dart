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

	static ApiUsage fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ApiUsage(
				data['range'],
				Series.fromList(data['apiCalls']),
				Series.fromList(data['throttledRequests']),
		);
	}

	static List<ApiUsage> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ApiUsage> list = new List();
    data.forEach((item) {
      list.add(ApiUsage.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['range'] = this.range;
			data['apiCalls'] = this.apiCalls.map((item)=>item.toMap());
			data['throttledRequests'] = this.throttledRequests.map((item)=>item.toMap());
		return data;
	}
}