import 'datapoint.dart';
class Series{
	List<Datapoint> datapoints;
	String target;
	Series(
		List<Datapoint> this.datapoints,
		String this.target,
	);

	static Series fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new Series(
				Datapoint.fromList(data['datapoints']),
				data['target'],
		);
	}

	static List<Series> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<Series> list = new List();
    data.forEach((item) {
      list.add(Series.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['datapoints'] = this.datapoints.map((item)=>item.toMap()).toList();
			data['target'] = this.target;
		return data;
	}
}