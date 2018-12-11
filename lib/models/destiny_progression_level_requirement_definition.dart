import 'interpolation_point_float.dart';
class DestinyProgressionLevelRequirementDefinition{
	List<InterpolationPointFloat> requirementCurve;
	int progressionHash;
	int hash;
	int index;
	bool redacted;
	DestinyProgressionLevelRequirementDefinition(
		List<InterpolationPointFloat> this.requirementCurve,
		int this.progressionHash,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyProgressionLevelRequirementDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionLevelRequirementDefinition(
				InterpolationPointFloat.fromList(data['requirementCurve']),
				data['progressionHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyProgressionLevelRequirementDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionLevelRequirementDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionLevelRequirementDefinition.fromJson(item));
    });
    return list;
	}
}