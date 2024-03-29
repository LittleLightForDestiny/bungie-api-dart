import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'single_component_response_of_destiny_vendor_receipts_component.dart';
import 'single_component_response_of_destiny_inventory_component.dart';
import 'single_component_response_of_destiny_profile_component.dart';
import 'single_component_response_of_destiny_platform_silver_component.dart';
import 'single_component_response_of_destiny_kiosks_component.dart';
import 'single_component_response_of_destiny_plug_sets_component.dart';
import 'single_component_response_of_destiny_profile_progression_component.dart';
import 'single_component_response_of_destiny_presentation_nodes_component.dart';
import 'single_component_response_of_destiny_profile_records_component.dart';
import 'single_component_response_of_destiny_profile_collectibles_component.dart';
import 'single_component_response_of_destiny_profile_transitory_component.dart';
import 'single_component_response_of_destiny_metrics_component.dart';
import 'single_component_response_of_destiny_string_variables_component.dart';
import 'single_component_response_of_destiny_social_commendations_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_inventory_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_loadouts_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_progression_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_render_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_activities_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_kiosks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.dart';
import 'destiny_base_item_component_set_ofuint32.dart';
import 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_records_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_collectibles_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_string_variables_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_craftables_component.dart';
import 'destiny_item_component_set_ofint64.dart';
import 'dictionary_component_response_ofint64_and_destiny_currencies_component.dart';

part 'destiny_profile_response.g.dart';

/// The response for GetDestinyProfile, with components for character and item-level data.
@JsonSerializable()
class DestinyProfileResponse{	
	DestinyProfileResponse();

	
	/// Records the timestamp of when most components were last generated from the world server source. Unless the component type is specified in the documentation for secondaryComponentsMintedTimestamp, this value is sufficient to do data freshness.
	@JsonKey(name:'responseMintedTimestamp')
	String? responseMintedTimestamp;
	
	/// Some secondary components are not tracked in the primary response timestamp and have their timestamp tracked here. If your component is any of the following, this field is where you will find your timestamp value:
	///  PresentationNodes, Records, Collectibles, Metrics, StringVariables, Craftables, Transitory
	///  All other component types may use the primary timestamp property.
	@JsonKey(name:'secondaryComponentsMintedTimestamp')
	String? secondaryComponentsMintedTimestamp;
	
	/// Recent, refundable purchases you have made from vendors. When will you use it? Couldn't say...
	/// COMPONENT TYPE: VendorReceipts
	@JsonKey(name:'vendorReceipts')
	SingleComponentResponseOfDestinyVendorReceiptsComponent? vendorReceipts;
	
	/// The profile-level inventory of the Destiny Profile.
	/// COMPONENT TYPE: ProfileInventories
	@JsonKey(name:'profileInventory')
	SingleComponentResponseOfDestinyInventoryComponent? profileInventory;
	
	/// The profile-level currencies owned by the Destiny Profile.
	/// COMPONENT TYPE: ProfileCurrencies
	@JsonKey(name:'profileCurrencies')
	SingleComponentResponseOfDestinyInventoryComponent? profileCurrencies;
	
	/// The basic information about the Destiny Profile (formerly "Account").
	/// COMPONENT TYPE: Profiles
	@JsonKey(name:'profile')
	SingleComponentResponseOfDestinyProfileComponent? profile;
	
	/// Silver quantities for any platform on which this Profile plays destiny.
	///  COMPONENT TYPE: PlatformSilver
	@JsonKey(name:'platformSilver')
	SingleComponentResponseOfDestinyPlatformSilverComponent? platformSilver;
	
	/// Items available from Kiosks that are available Profile-wide (i.e. across all characters)
	/// This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the characterKiosks property.
	/// COMPONENT TYPE: Kiosks
	@JsonKey(name:'profileKiosks')
	SingleComponentResponseOfDestinyKiosksComponent? profileKiosks;
	
	/// When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are profile-scoped.
	/// This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'profilePlugSets')
	SingleComponentResponseOfDestinyPlugSetsComponent? profilePlugSets;
	
	/// When we have progression information - such as Checklists - that may apply profile-wide, it will be returned here rather than in the per-character progression data.
	/// COMPONENT TYPE: ProfileProgression
	@JsonKey(name:'profileProgression')
	SingleComponentResponseOfDestinyProfileProgressionComponent? profileProgression;
	
	/// COMPONENT TYPE: PresentationNodes
	@JsonKey(name:'profilePresentationNodes')
	SingleComponentResponseOfDestinyPresentationNodesComponent? profilePresentationNodes;
	
	/// COMPONENT TYPE: Records
	@JsonKey(name:'profileRecords')
	SingleComponentResponseOfDestinyProfileRecordsComponent? profileRecords;
	
	/// COMPONENT TYPE: Collectibles
	@JsonKey(name:'profileCollectibles')
	SingleComponentResponseOfDestinyProfileCollectiblesComponent? profileCollectibles;
	
	/// COMPONENT TYPE: Transitory
	@JsonKey(name:'profileTransitoryData')
	SingleComponentResponseOfDestinyProfileTransitoryComponent? profileTransitoryData;
	
	/// COMPONENT TYPE: Metrics
	@JsonKey(name:'metrics')
	SingleComponentResponseOfDestinyMetricsComponent? metrics;
	
	/// COMPONENT TYPE: StringVariables
	@JsonKey(name:'profileStringVariables')
	SingleComponentResponseOfDestinyStringVariablesComponent? profileStringVariables;
	
	/// COMPONENT TYPE: SocialCommendations
	@JsonKey(name:'profileCommendations')
	SingleComponentResponseOfDestinySocialCommendationsComponent? profileCommendations;
	
	/// Basic information about each character, keyed by the CharacterId.
	/// COMPONENT TYPE: Characters
	@JsonKey(name:'characters')
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent? characters;
	
	/// The character-level non-equipped inventory items, keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterInventories
	@JsonKey(name:'characterInventories')
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent? characterInventories;
	
	/// The character loadouts, keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterLoadouts
	@JsonKey(name:'characterLoadouts')
	DictionaryComponentResponseOfint64AndDestinyLoadoutsComponent? characterLoadouts;
	
	/// Character-level progression data, keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterProgressions
	@JsonKey(name:'characterProgressions')
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent? characterProgressions;
	
	/// Character rendering data - a minimal set of info needed to render a character in 3D - keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterRenderData
	@JsonKey(name:'characterRenderData')
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent? characterRenderData;
	
	/// Character activity data - the activities available to this character and its status, keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterActivities
	@JsonKey(name:'characterActivities')
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent? characterActivities;
	
	/// The character's equipped items, keyed by the Character's Id.
	/// COMPONENT TYPE: CharacterEquipment
	@JsonKey(name:'characterEquipment')
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent? characterEquipment;
	
	/// Items available from Kiosks that are available to a specific character as opposed to the account as a whole. It must be combined with data from the profileKiosks property to get a full picture of the character's available items to check out of a kiosk.
	/// This component returns information about what Kiosk items are available to you on a *Character* level. Usually, kiosk items will be earned for the entire Profile (all characters) at once. To find those, look in the profileKiosks property.
	/// COMPONENT TYPE: Kiosks
	@JsonKey(name:'characterKiosks')
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent? characterKiosks;
	
	/// When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states, per character, that are character-scoped.
	/// This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'characterPlugSets')
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent? characterPlugSets;
	
	/// Do you ever get the feeling that a system was designed *too* flexibly? That it can be used in so many different ways that you end up being unable to provide an easy to use abstraction for the mess that's happening under the surface?
	/// Let's talk about character-specific data that might be related to items without instances. These two statements are totally unrelated, I promise.
	/// At some point during D2, it was decided that items - such as Bounties - could be given to characters and *not* have instance data, but that *could* display and even use relevant state information on your account and character.
	/// Up to now, any item that had meaningful dependencies on character or account state had to be instanced, and thus "itemComponents" was all that you needed: it was keyed by item's instance IDs and provided the stateful information you needed inside.
	/// Unfortunately, we don't live in such a magical world anymore. This is information held on a per-character basis about non-instanced items that the characters have in their inventory - or that reference character-specific state information even if it's in Account-level inventory - and the values related to that item's state in relation to the given character.
	/// To give a concrete example, look at a Moments of Triumph bounty. They exist in a character's inventory, and show/care about a character's progression toward completing the bounty. But the bounty itself is a non-instanced item, like a mod or a currency. This returns that data for the characters who have the bounty in their inventory.
	/// I'm not crying, you're crying Okay we're both crying but it's going to be okay I promise Actually I shouldn't promise that, I don't know if it's going to be okay
	@JsonKey(name:'characterUninstancedItemComponents')
	Map<String, DestinyBaseItemComponentSetOfuint32>? characterUninstancedItemComponents;
	
	/// COMPONENT TYPE: PresentationNodes
	@JsonKey(name:'characterPresentationNodes')
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent? characterPresentationNodes;
	
	/// COMPONENT TYPE: Records
	@JsonKey(name:'characterRecords')
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent? characterRecords;
	
	/// COMPONENT TYPE: Collectibles
	@JsonKey(name:'characterCollectibles')
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent? characterCollectibles;
	
	/// COMPONENT TYPE: StringVariables
	@JsonKey(name:'characterStringVariables')
	DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent? characterStringVariables;
	
	/// COMPONENT TYPE: Craftables
	@JsonKey(name:'characterCraftables')
	DictionaryComponentResponseOfint64AndDestinyCraftablesComponent? characterCraftables;
	
	/// Information about instanced items across all returned characters, keyed by the item's instance ID.
	/// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
	@JsonKey(name:'itemComponents')
	DestinyItemComponentSetOfint64? itemComponents;
	
	/// A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
	/// COMPONENT TYPE: CurrencyLookups
	@JsonKey(name:'characterCurrencyLookups')
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent? characterCurrencyLookups;

	factory DestinyProfileResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileResponseToJson(this);

	static Future<DestinyProfileResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileResponse>((json)=>DestinyProfileResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}