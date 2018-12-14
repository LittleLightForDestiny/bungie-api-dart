import 'interpolation_point.dart';
class DestinyStatDisplayDefinition{
	int statHash;
	int maximumValue;
	bool displayAsNumeric;
	List<InterpolationPoint> displayInterpolation;
	DestinyStatDisplayDefinition(
		this.statHash,
		this.maximumValue,
		this.displayAsNumeric,
		this.displayInterpolation,
	);

	static DestinyStatDisplayDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatDisplayDefinition(
				data['statHash'],
				data['maximumValue'],
				data['displayAsNumeric'],
				data['displayInterpolation'] != null ? InterpolationPoint.fromList(data['displayInterpolation']) : null,
		);
	}

	static List<DestinyStatDisplayDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatDisplayDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatDisplayDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statHash'] = this.statHash;
			data['maximumValue'] = this.maximumValue;
			data['displayAsNumeric'] = this.displayAsNumeric;
			data['displayInterpolation'] = this.displayInterpolation.map((item)=>item.toMap()).toList();
		return data;
	}
}