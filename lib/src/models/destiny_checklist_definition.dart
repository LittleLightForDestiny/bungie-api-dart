import 'destiny_display_properties_definition.dart';
import 'destiny_checklist_entry_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_checklist_definition.g.dart';

/// By public demand, Checklists are loose sets of &quot;things to do&#x2F;things you have done&quot; in Destiny that we were actually able to track. They include easter eggs you find in the world, unique chests you unlock, and other such data where the first time you do it is significant enough to be tracked, and you have the potential to &quot;get them all&quot;.
/// These may be account-wide, or may be per character. The status of these will be returned in related &quot;Checklist&quot; data coming down from API requests such as GetProfile or GetCharacter.
/// Generally speaking, the items in a checklist can be completed in any order: we return an ordered list which only implies the way we are showing them in our own UI, and you can feel free to alter it as you wish.
/// Note that, in the future, there will be something resembling the old D1 Record Books in at least some vague form. When that is created, it may be that it will supercede much or all of this Checklist data. It remains to be seen if that will be the case, so for now assume that the Checklists will still exist even after the release of D2: Forsaken.
@JsonSerializable()
class DestinyChecklistDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// A localized string prompting you to view the checklist.
	@JsonKey(name:'viewActionString')
	String viewActionString;

	/// Indicates whether you will find this checklist on the Profile or Character components.
	@JsonKey(name:'scope')
	int scope;

	/// The individual checklist items. Gotta catch &#39;em all.
	@JsonKey(name:'entries')
	List<DestinyChecklistEntryDefinition> entries;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyChecklistDefinition();

	factory DestinyChecklistDefinition.fromJson(Map<String, dynamic> json) => _$DestinyChecklistDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyChecklistDefinitionToJson(this);
}
