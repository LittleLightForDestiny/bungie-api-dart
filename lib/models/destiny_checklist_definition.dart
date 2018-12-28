import 'destiny_display_properties_definition.dart';
import 'destiny_checklist_entry_definition.dart';

/* By public demand, Checklists are loose sets of "things to do/things you have done" in Destiny that we were actually able to track. They include easter eggs you find in the world, unique chests you unlock, and other such data where the first time you do it is significant enough to be tracked, and you have the potential to "get them all".
These may be account-wide, or may be per character. The status of these will be returned in related "Checklist" data coming down from API requests such as GetProfile or GetCharacter.
Generally speaking, the items in a checklist can be completed in any order: we return an ordered list which only implies the way we are showing them in our own UI, and you can feel free to alter it as you wish.
Note that, in the future, there will be something resembling the old D1 Record Books in at least some vague form. When that is created, it may be that it will supercede much or all of this Checklist data. It remains to be seen if that will be the case, so for now assume that the Checklists will still exist even after the release of D2: Forsaken. */
class DestinyChecklistDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* A localized string prompting you to view the checklist. */
	String viewActionString;
	
	/* Indicates whether you will find this checklist on the Profile or Character components. */
	int scope;
	
	/* The individual checklist items. Gotta catch 'em all. */
	List<DestinyChecklistEntryDefinition> entries;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
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