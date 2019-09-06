
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_talent_grid_block_definition.g.dart';

/// This defines information that can only come from a talent grid on an item. Items mostly have negligible talent grid data these days, but instanced items still retain grids as a source for some of this common information.
/// Builds&#x2F;Subclasses are the only items left that still have talent grids with meaningful Nodes.
@JsonSerializable()
class DestinyItemTalentGridBlockDefinition {

	/// The hash identifier of the DestinyTalentGridDefinition attached to this item.
	@JsonKey(name:'talentGridHash')
	int talentGridHash;

	/// This is meant to be a subtitle for looking at the talent grid. In practice, somewhat frustratingly, this always merely says the localized word for &quot;Details&quot;. Great. Maybe it&#39;ll have more if talent grids ever get used for more than builds and subclasses again.
	@JsonKey(name:'itemDetailString')
	String itemDetailString;

	/// A shortcut string identifier for the &quot;build&quot; in question, if this talent grid has an associated build. Doesn&#39;t map to anything we can expose at the moment.
	@JsonKey(name:'buildName')
	String buildName;

	/// If the talent grid implies a damage type, this is the enum value for that damage type.
	@JsonKey(name:'hudDamageType')
	int hudDamageType;

	/// If the talent grid has a special icon that&#39;s shown in the game UI (like builds, funny that), this is the identifier for that icon. Sadly, we don&#39;t actually get that icon right now. I&#39;ll be looking to replace this with a path to the actual icon itself.
	@JsonKey(name:'hudIcon')
	String hudIcon;
	DestinyItemTalentGridBlockDefinition();

	factory DestinyItemTalentGridBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemTalentGridBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemTalentGridBlockDefinitionToJson(this);
}
