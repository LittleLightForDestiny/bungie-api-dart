import 'interpolation_point.dart';
class DestinyStatDisplayDefinition{
	int statHash;
	int maximumValue;
	bool displayAsNumeric;
	List<InterpolationPoint> displayInterpolation;
	DestinyStatDisplayDefinition(
		int this.statHash,
		int this.maximumValue,
		bool this.displayAsNumeric,
		List<InterpolationPoint> this.displayInterpolation,
	);

	static DestinyStatDisplayDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatDisplayDefinition(
				data['statHash'],
				data['maximumValue'],
				data['displayAsNumeric'],
				InterpolationPoint.fromList(data['displayInterpolation']),
		);
	}

	static List<DestinyStatDisplayDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatDisplayDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatDisplayDefinition.fromJson(item));
    });
    return list;
	}
}