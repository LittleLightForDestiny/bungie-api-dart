import 'destiny_display_properties_definition.dart';
import 'destiny_insert_plug_action_definition.dart';
import 'destiny_plug_whitelist_entry_definition.dart';
import 'destiny_socket_type_scalar_material_requirement_entry.dart';

/* All Sockets have a "Type": a set of common properties that determine when the socket allows Plugs to be inserted, what Categories of Plugs can be inserted, and whether the socket is even visible at all given the current game/character/account state.
See DestinyInventoryItemDefinition for more information about Socketed items and Plugs. */
class DestinySocketTypeDefinition{
	
	/* There are fields for this display data, but they appear to be unpopulated as of now. I am not sure where in the UI these would show if they even were populated, but I will continue to return this data in case it becomes useful. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* Defines what happens when a plug is inserted into sockets of this type. */
	DestinyInsertPlugActionDefinition insertAction;
	
	/* A list of Plug "Categories" that are allowed to be plugged into sockets of this type.
These should be compared against a given plug item's DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item's category.
If the plug's category matches any whitelisted plug, or if the whitelist is empty, it is allowed to be inserted. */
	List<DestinyPlugWhitelistEntryDefinition> plugWhitelist;
	
	/*  */
	int socketCategoryHash;
	
	/* Sometimes a socket isn't visible. These are some of the conditions under which sockets of this type are not visible. Unfortunately, the truth of visibility is much, much more complex. Best to rely on the live data for whether the socket is visible and enabled. */
	int visibility;
	
	/*  */
	bool alwaysRandomizeSockets;
	
	/*  */
	bool isPreviewEnabled;
	
	/*  */
	bool hideDuplicateReusablePlugs;
	
	/* This property indicates if the socket type determines whether Emblem icons and nameplates should be overridden by the inserted plug item's icon and nameplate. */
	bool overridesUiAppearance;
	
	/*  */
	bool avoidDuplicatesOnInitialization;
	
	/*  */
	List<DestinySocketTypeScalarMaterialRequirementEntry> currencyScalars;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinySocketTypeDefinition(
		this.displayProperties,
		this.insertAction,
		this.plugWhitelist,
		this.socketCategoryHash,
		this.visibility,
		this.alwaysRandomizeSockets,
		this.isPreviewEnabled,
		this.hideDuplicateReusablePlugs,
		this.overridesUiAppearance,
		this.avoidDuplicatesOnInitialization,
		this.currencyScalars,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinySocketTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySocketTypeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['insertAction'] != null ? DestinyInsertPlugActionDefinition.fromMap(data['insertAction']) : null,
				data['plugWhitelist'] != null ? DestinyPlugWhitelistEntryDefinition.fromList(data['plugWhitelist']) : null,
				data['socketCategoryHash'],
				data['visibility'],
				data['alwaysRandomizeSockets'],
				data['isPreviewEnabled'],
				data['hideDuplicateReusablePlugs'],
				data['overridesUiAppearance'],
				data['avoidDuplicatesOnInitialization'],
				data['currencyScalars'] != null ? DestinySocketTypeScalarMaterialRequirementEntry.fromList(data['currencyScalars']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinySocketTypeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinySocketTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySocketTypeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['insertAction'] = this.insertAction;
			data['plugWhitelist'] = this.plugWhitelist.map((item)=>item.toMap()).toList();
			data['socketCategoryHash'] = this.socketCategoryHash;
			data['visibility'] = this.visibility;
			data['alwaysRandomizeSockets'] = this.alwaysRandomizeSockets;
			data['isPreviewEnabled'] = this.isPreviewEnabled;
			data['hideDuplicateReusablePlugs'] = this.hideDuplicateReusablePlugs;
			data['overridesUiAppearance'] = this.overridesUiAppearance;
			data['avoidDuplicatesOnInitialization'] = this.avoidDuplicatesOnInitialization;
			data['currencyScalars'] = this.currencyScalars.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}