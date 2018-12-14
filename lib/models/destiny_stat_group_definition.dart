import 'destiny_stat_display_definition.dart';
import 'destiny_stat_override_definition.dart';
class DestinyStatGroupDefinition{
	int maximumValue;
	int uiPosition;
	List<DestinyStatDisplayDefinition> scaledStats;
	Map<String, DestinyStatOverrideDefinition> overrides;
	int hash;
	int index;
	bool redacted;
	DestinyStatGroupDefinition(
		this.maximumValue,
		this.uiPosition,
		this.scaledStats,
		this.overrides,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyStatGroupDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatGroupDefinition(
				data['maximumValue'],
				data['uiPosition'],
				data['scaledStats'] != null ? DestinyStatDisplayDefinition.fromList(data['scaledStats']) : null,
				data['overrides'] != null ? Map<String, DestinyStatOverrideDefinition>.from(data['overrides'].map((k, v)=>MapEntry(k, DestinyStatOverrideDefinition.fromMap(v)))) : null,
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
			data['scaledStats'] = this.scaledStats.map((item)=>item.toMap()).toList();
			data['overrides'] = this.overrides;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}