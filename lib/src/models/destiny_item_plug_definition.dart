import 'package:json_annotation/json_annotation.dart';

import 'destiny_plug_rule_definition.dart';
import '../enums/plug_ui_styles.dart';
import '../enums/plug_availability_mode.dart';
import 'destiny_parent_item_override.dart';
import 'destiny_energy_capacity_entry.dart';
import 'destiny_energy_cost_entry.dart';

part 'destiny_item_plug_definition.g.dart';

/// If an item is a Plug, its DestinyInventoryItemDefinition.plug property will be populated with an instance of one of these bad boys.
/// This gives information about when it can be inserted, what the plug&#39;s category is (and thus whether it is compatible with a socket... see DestinySocketTypeDefinition for information about Plug Categories and socket compatibility), whether it is enabled and other Plug info.
@JsonSerializable()
class DestinyItemPlugDefinition{	
	DestinyItemPlugDefinition();

	factory DestinyItemPlugDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemPlugDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemPlugDefinitionToJson(this);
	
	/// The rules around when this plug can be inserted into a socket, aside from the socket's individual restrictions.
	/// The live data DestinyItemPlugComponent.insertFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user.
	@JsonKey(name:'insertionRules')
	List<DestinyPlugRuleDefinition>? insertionRules;
	
	/// The string identifier for the plug's category. Use the socket's DestinySocketTypeDefinition.plugWhitelist to determine whether this plug can be inserted into the socket.
	@JsonKey(name:'plugCategoryIdentifier')
	String? plugCategoryIdentifier;
	
	/// The hash for the plugCategoryIdentifier. You can use this instead if you wish: I put both in the definition for debugging purposes.
	@JsonKey(name:'plugCategoryHash')
	int? plugCategoryHash;
	
	/// If you successfully socket the item, this will determine whether or not you get "refunded" on the plug.
	@JsonKey(name:'onActionRecreateSelf')
	bool? onActionRecreateSelf;
	
	/// If inserting this plug requires materials, this is the hash identifier for looking up the DestinyMaterialRequirementSetDefinition for those requirements.
	@JsonKey(name:'insertionMaterialRequirementHash')
	int? insertionMaterialRequirementHash;
	
	/// In the game, if you're inspecting a plug item directly, this will be the item shown with the plug attached. Look up the DestinyInventoryItemDefinition for this hash for the item.
	@JsonKey(name:'previewItemOverrideHash')
	int? previewItemOverrideHash;
	
	/// It's not enough for the plug to be inserted. It has to be enabled as well. For it to be enabled, it may require materials. This is the hash identifier for the DestinyMaterialRequirementSetDefinition for those requirements, if there is one.
	@JsonKey(name:'enabledMaterialRequirementHash')
	int? enabledMaterialRequirementHash;
	
	/// The rules around whether the plug, once inserted, is enabled and providing its benefits.
	/// The live data DestinyItemPlugComponent.enableFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user.
	@JsonKey(name:'enabledRules')
	List<DestinyPlugRuleDefinition>? enabledRules;
	
	/// Plugs can have arbitrary, UI-defined identifiers that the UI designers use to determine the style applied to plugs. Unfortunately, we have neither a definitive list of these labels nor advance warning of when new labels might be applied or how that relates to how they get rendered. If you want to, you can refer to known labels to change your own styles: but know that new ones can be created arbitrarily, and we have no way of associating the labels with any specific UI style guidance... you'll have to piece that together on your end. Or do what we do, and just show plugs more generically, without specialized styles.
	@JsonKey(name:'uiPlugLabel')
	String? uiPlugLabel;
	
	@JsonKey(name:'plugStyle')
	PlugUiStyles? plugStyle;
	
	/// Indicates the rules about when this plug can be used. See the PlugAvailabilityMode enumeration for more information!
	@JsonKey(name:'plugAvailability',unknownEnumValue:PlugAvailabilityMode.ProtectedInvalidEnumValue)
	PlugAvailabilityMode? plugAvailability;
	
	/// If the plug meets certain state requirements, it may have an alternative label applied to it. This is the alternative label that will be applied in such a situation.
	@JsonKey(name:'alternateUiPlugLabel')
	String? alternateUiPlugLabel;
	
	/// The alternate plug of the plug: only applies when the item is in states that only the server can know about and control, unfortunately. See AlternateUiPlugLabel for the related label info.
	@JsonKey(name:'alternatePlugStyle')
	PlugUiStyles? alternatePlugStyle;
	
	/// If TRUE, this plug is used for UI display purposes only, and doesn't have any interesting effects of its own.
	@JsonKey(name:'isDummyPlug')
	bool? isDummyPlug;
	
	/// Do you ever get the feeling that a system has become so overburdened by edge cases that it probably should have become some other system entirely? So do I!
	/// In totally unrelated news, Plugs can now override properties of their parent items. This is some of the relevant definition data for those overrides.
	/// If this is populated, it will have the override data to be applied when this plug is applied to an item.
	@JsonKey(name:'parentItemOverride')
	DestinyParentItemOverride? parentItemOverride;
	
	/// IF not null, this plug provides Energy capacity to the item in which it is socketed. In Armor 2.0 for example, is implemented in a similar way to Masterworks, where visually it's a single area of the UI being clicked on to "Upgrade" to higher energy levels, but it's actually socketing new plugs.
	@JsonKey(name:'energyCapacity')
	DestinyEnergyCapacityEntry? energyCapacity;
	
	/// IF not null, this plug has an energy cost. This contains the details of that cost.
	@JsonKey(name:'energyCost')
	DestinyEnergyCostEntry? energyCost;
}