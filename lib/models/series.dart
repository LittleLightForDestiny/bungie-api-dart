import 'datapoint.dart';
class Series{
	List<Datapoint> datapoints;
	String target;
	Series(
		List<Datapoint> this.datapoints,
		String this.target,
	);

	static Series fromJson(Map<String, dynamic> data){
		return new Series(
				Datapoint.fromList(data['datapoints']),
				data['target'],
		);
	}

	static List<Series> fromList(List<dynamic> data){
		List<Series> list = new List();
    data.forEach((item) {
      list.add(Series.fromJson(item));
    });
    return list;
	}
}