import 'datapoint.dart';

/**  */
class Series{
	
	/** Collection of samples with time and value. */
	List<Datapoint> datapoints;
	
	/** Target to which to datapoints apply. */
	String target;
	Series(
		this.datapoints,
		this.target,
	);

	static Series fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new Series(
				data['datapoints'] != null ? Datapoint.fromList(data['datapoints']) : null,
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
			data['datapoints'] = this.datapoints != null? this.datapoints.map((item)=>item.toMap()).toList() : null;
			data['target'] = this.target;
		return data;
	}
}