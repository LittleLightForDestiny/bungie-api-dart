import 'destiny_display_properties_definition.dart';
import 'destiny_insert_plug_action_definition.dart';
import 'destiny_plug_whitelist_entry_definition.dart';
import 'destiny_socket_type_scalar_material_requirement_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_socket_type_definition.g.dart';

/// All Sockets have a &quot;Type&quot;: a set of common properties that determine when the socket allows Plugs to be inserted, what Categories of Plugs can be inserted, and whether the socket is even visible at all given the current game&#x2F;character&#x2F;account state.
/// See DestinyInventoryItemDefinition for more information about Socketed items and Plugs.
@JsonSerializable()
class DestinySocketTypeDefinition {

	/// There are fields for this display data, but they appear to be unpopulated as of now. I am not sure where in the UI these would show if they even were populated, but I will continue to return this data in case it becomes useful.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// Defines what happens when a plug is inserted into sockets of this type.
	@JsonKey(name:'insertAction')
	DestinyInsertPlugActionDefinition insertAction;

	/// A list of Plug &quot;Categories&quot; that are allowed to be plugged into sockets of this type.
	/// These should be compared against a given plug item&#39;s DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item&#39;s category.
	/// If the plug&#39;s category matches any whitelisted plug, or if the whitelist is empty, it is allowed to be inserted.
	@JsonKey(name:'plugWhitelist')
	List<DestinyPlugWhitelistEntryDefinition> plugWhitelist;

	@JsonKey(name:'socketCategoryHash')
	int socketCategoryHash;

	/// Sometimes a socket isn&#39;t visible. These are some of the conditions under which sockets of this type are not visible. Unfortunately, the truth of visibility is much, much more complex. Best to rely on the live data for whether the socket is visible and enabled.
	@JsonKey(name:'visibility')
	int visibility;

	@JsonKey(name:'alwaysRandomizeSockets')
	bool alwaysRandomizeSockets;

	@JsonKey(name:'isPreviewEnabled')
	bool isPreviewEnabled;

	@JsonKey(name:'hideDuplicateReusablePlugs')
	bool hideDuplicateReusablePlugs;

	/// This property indicates if the socket type determines whether Emblem icons and nameplates should be overridden by the inserted plug item&#39;s icon and nameplate.
	@JsonKey(name:'overridesUiAppearance')
	bool overridesUiAppearance;

	@JsonKey(name:'avoidDuplicatesOnInitialization')
	bool avoidDuplicatesOnInitialization;

	@JsonKey(name:'currencyScalars')
	List<DestinySocketTypeScalarMaterialRequirementEntry> currencyScalars;

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
	DestinySocketTypeDefinition();

	factory DestinySocketTypeDefinition.fromJson(Map<String, dynamic> json) => _$DestinySocketTypeDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinySocketTypeDefinitionToJson(this);
}
