import 'destiny_stat_display_definition.dart';
import 'destiny_stat_override_definition.dart';
class DestinyStatGroupDefinition{
	int maximumValue;
	int uiPosition;
	List<DestinyStatDisplayDefinition> scaledStats;
	Map<DestinyStatOverrideDefinition, dynamic> overrides;
	int hash;
	int index;
	bool redacted;
	DestinyStatGroupDefinition(
		int this.maximumValue,
		int this.uiPosition,
		List<DestinyStatDisplayDefinition> this.scaledStats,
		Map<DestinyStatOverrideDefinition, dynamic> this.overrides,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyStatGroupDefinition fromJson(Map<String, dynamic> data){
		return new DestinyStatGroupDefinition(
				data['maximumValue'],
				data['uiPosition'],
				DestinyStatDisplayDefinition.fromList(data['scaledStats']),
				data['overrides'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyStatGroupDefinition> fromList(List<dynamic> data){
		List<DestinyStatGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatGroupDefinition.fromJson(item));
    });
    return list;
	}
}