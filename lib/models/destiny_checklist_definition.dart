import 'destiny_display_properties_definition.dart';
import 'destiny_checklist_entry_definition.dart';
class DestinyChecklistDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String viewActionString;
	int scope;
	List<DestinyChecklistEntryDefinition> entries;
	int hash;
	int index;
	bool redacted;
	DestinyChecklistDefinition(
		this.displayProperties,
		this.viewActionString,
		this.scope,
		this.entries,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyChecklistDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyChecklistDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['viewActionString'],
				data['scope'],
				data['entries'] != null ? DestinyChecklistEntryDefinition.fromList(data['entries']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyChecklistDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyChecklistDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyChecklistDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['viewActionString'] = this.viewActionString;
			data['scope'] = this.scope;
			data['entries'] = this.entries.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}