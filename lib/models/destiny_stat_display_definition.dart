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
		return new DestinyStatDisplayDefinition(
				data['statHash'],
				data['maximumValue'],
				data['displayAsNumeric'],
				InterpolationPoint.fromList(data['displayInterpolation']),
		);
	}

	static List<DestinyStatDisplayDefinition> fromList(List<dynamic> data){
		List<DestinyStatDisplayDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatDisplayDefinition.fromJson(item));
    });
    return list;
	}
}