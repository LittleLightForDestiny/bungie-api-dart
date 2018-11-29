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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.viewActionString,
		int this.scope,
		List<DestinyChecklistEntryDefinition> this.entries,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyChecklistDefinition fromJson(Map<String, dynamic> data){
		return new DestinyChecklistDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['viewActionString'],
				data['scope'],
				DestinyChecklistEntryDefinition.fromList(data['entries']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyChecklistDefinition> fromList(List<dynamic> data){
		List<DestinyChecklistDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyChecklistDefinition.fromJson(item));
    });
    return list;
	}
}