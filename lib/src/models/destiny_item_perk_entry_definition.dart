import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/item_perk_visibility.dart';

part 'destiny_item_perk_entry_definition.g.dart';

/// An intrinsic perk on an item, and the requirements for it to be activated.
@JsonSerializable()
class DestinyItemPerkEntryDefinition{	
	DestinyItemPerkEntryDefinition();

	
	/// If this perk is not active, this is the string to show for why it's not providing its benefits.
	@JsonKey(name:'requirementDisplayString')
	String? requirementDisplayString;
	
	/// A hash identifier for the DestinySandboxPerkDefinition being provided on the item.
	@JsonKey(name:'perkHash')
	int? perkHash;
	
	/// Indicates whether this perk should be shown, or if it should be shown disabled.
	@JsonKey(name:'perkVisibility',fromJson:decodeItemPerkVisibility,toJson:encodeItemPerkVisibility)
	ItemPerkVisibility? perkVisibility;

	factory DestinyItemPerkEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemPerkEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemPerkEntryDefinitionToJson(this);

	static Future<DestinyItemPerkEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemPerkEntryDefinition>((json)=>DestinyItemPerkEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}