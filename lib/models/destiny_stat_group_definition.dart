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

	static DestinyStatGroupDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyStatGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatGroupDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['maximumValue'] = this.maximumValue;
			data['uiPosition'] = this.uiPosition;
			data['scaledStats'] = this.scaledStats.map((item)=>item.toMap());
			data['overrides'] = this.overrides;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}