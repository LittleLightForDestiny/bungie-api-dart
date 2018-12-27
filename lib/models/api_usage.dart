import 'date_range.dart';
import 'series.dart';
class ApiUsage{
	DateRange range;
	List<Series> apiCalls;
	List<Series> throttledRequests;
	ApiUsage(
		this.range,
		this.apiCalls,
		this.throttledRequests,
	);

	static ApiUsage fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ApiUsage(
				data['range'] != null ? DateRange.fromMap(data['range']) : null,
				data['apiCalls'] != null ? Series.fromList(data['apiCalls']) : null,
				data['throttledRequests'] != null ? Series.fromList(data['throttledRequests']) : null,
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
			data['apiCalls'] = this.apiCalls.map((item)=>item.toMap()).toList();
			data['throttledRequests'] = this.throttledRequests.map((item)=>item.toMap()).toList();
		return data;
	}
}