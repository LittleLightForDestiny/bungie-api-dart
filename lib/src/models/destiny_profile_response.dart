import 'single_component_response_of_destiny_vendor_receipts_component.dart';
import 'single_component_response_of_destiny_inventory_component.dart';
import 'single_component_response_of_destiny_profile_component.dart';
import 'single_component_response_of_destiny_kiosks_component.dart';
import 'single_component_response_of_destiny_plug_sets_component.dart';
import 'single_component_response_of_destiny_profile_progression_component.dart';
import 'single_component_response_of_destiny_presentation_nodes_component.dart';
import 'single_component_response_of_destiny_profile_records_component.dart';
import 'single_component_response_of_destiny_profile_collectibles_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_inventory_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_progression_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_render_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_activities_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_kiosks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.dart';
import 'destiny_base_item_component_set_ofuint32.dart';
import 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_records_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofint64.dart';
import 'dictionary_component_response_ofint64_and_destiny_currencies_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_response.g.dart';

/// The response for GetDestinyProfile, with components for character and item-level data.
@JsonSerializable()
class DestinyProfileResponse {

	/// Recent, refundable purchases you have made from vendors. When will you use it? Couldn&#39;t say...
	/// COMPONENT TYPE: VendorReceipts
	@JsonKey(name:'vendorReceipts')
	SingleComponentResponseOfDestinyVendorReceiptsComponent vendorReceipts;

	/// The profile-level inventory of the Destiny Profile.
	/// COMPONENT TYPE: ProfileInventories
	@JsonKey(name:'profileInventory')
	SingleComponentResponseOfDestinyInventoryComponent profileInventory;

	/// The profile-level currencies owned by the Destiny Profile.
	/// COMPONENT TYPE: ProfileCurrencies
	@JsonKey(name:'profileCurrencies')
	SingleComponentResponseOfDestinyInventoryComponent profileCurrencies;

	/// The basic information about the Destiny Profile (formerly &quot;Account&quot;).
	/// COMPONENT TYPE: Profiles
	@JsonKey(name:'profile')
	SingleComponentResponseOfDestinyProfileComponent profile;

	/// Items available from Kiosks that are available Profile-wide (i.e. across all characters)
	/// This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the characterKiosks property.
	/// COMPONENT TYPE: Kiosks
	@JsonKey(name:'profileKiosks')
	SingleComponentResponseOfDestinyKiosksComponent profileKiosks;

	/// When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are profile-scoped.
	/// This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'profilePlugSets')
	SingleComponentResponseOfDestinyPlugSetsComponent profilePlugSets;

	/// When we have progression information - such as Checklists - that may apply profile-wide, it will be returned here rather than in the per-character progression data.
	/// COMPONENT TYPE: ProfileProgression
	@JsonKey(name:'profileProgression')
	SingleComponentResponseOfDestinyProfileProgressionComponent profileProgression;

	/// COMPONENT TYPE: PresentationNodes
	@JsonKey(name:'profilePresentationNodes')
	SingleComponentResponseOfDestinyPresentationNodesComponent profilePresentationNodes;

	/// COMPONENT TYPE: Records
	@JsonKey(name:'profileRecords')
	SingleComponentResponseOfDestinyProfileRecordsComponent profileRecords;

	/// COMPONENT TYPE: Collectibles
	@JsonKey(name:'profileCollectibles')
	SingleComponentResponseOfDestinyProfileCollectiblesComponent profileCollectibles;

	/// Basic information about each character, keyed by the CharacterId.
	/// COMPONENT TYPE: Characters
	@JsonKey(name:'characters')
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent characters;

	/// The character-level non-equipped inventory items, keyed by the Character&#39;s Id.
	/// COMPONENT TYPE: CharacterInventories
	@JsonKey(name:'characterInventories')
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterInventories;

	/// Character-level progression data, keyed by the Character&#39;s Id.
	/// COMPONENT TYPE: CharacterProgressions
	@JsonKey(name:'characterProgressions')
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent characterProgressions;

	/// Character rendering data - a minimal set of info needed to render a character in 3D - keyed by the Character&#39;s Id.
	/// COMPONENT TYPE: CharacterRenderData
	@JsonKey(name:'characterRenderData')
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent characterRenderData;

	/// Character activity data - the activities available to this character and its status, keyed by the Character&#39;s Id.
	/// COMPONENT TYPE: CharacterActivities
	@JsonKey(name:'characterActivities')
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent characterActivities;

	/// The character&#39;s equipped items, keyed by the Character&#39;s Id.
	/// COMPONENT TYPE: CharacterEquipment
	@JsonKey(name:'characterEquipment')
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterEquipment;

	/// Items available from Kiosks that are available to a specific character as opposed to the account as a whole. It must be combined with data from the profileKiosks property to get a full picture of the character&#39;s available items to check out of a kiosk.
	/// This component returns information about what Kiosk items are available to you on a *Character* level. Usually, kiosk items will be earned for the entire Profile (all characters) at once. To find those, look in the profileKiosks property.
	/// COMPONENT TYPE: Kiosks
	@JsonKey(name:'characterKiosks')
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent characterKiosks;

	/// When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states, per character, that are character-scoped.
	/// This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'characterPlugSets')
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent characterPlugSets;

	/// Do you ever get the feeling that a system was designed *too* flexibly? That it can be used in so many different ways that you end up being unable to provide an easy to use abstraction for the mess that&#39;s happening under the surface?
	/// Let&#39;s talk about character-specific data that might be related to items without instances. These two statements are totally unrelated, I promise.
	/// At some point during D2, it was decided that items - such as Bounties - could be given to characters and *not* have instance data, but that *could* display and even use relevant state information on your account and character.
	/// Up to now, any item that had meaningful dependencies on character or account state had to be instanced, and thus &quot;itemComponents&quot; was all that you needed: it was keyed by item&#39;s instance IDs and provided the stateful information you needed inside.
	/// Unfortunately, we don&#39;t live in such a magical world anymore. This is information held on a per-character basis about non-instanced items that the characters have in their inventory - or that reference character-specific state information even if it&#39;s in Account-level inventory - and the values related to that item&#39;s state in relation to the given character.
	/// To give a concrete example, look at a Moments of Triumph bounty. They exist in a character&#39;s inventory, and show&#x2F;care about a character&#39;s progression toward completing the bounty. But the bounty itself is a non-instanced item, like a mod or a currency. This returns that data for the characters who have the bounty in their inventory.
	/// I&#39;m not crying, you&#39;re crying Okay we&#39;re both crying but it&#39;s going to be okay I promise Actually I shouldn&#39;t promise that, I don&#39;t know if it&#39;s going to be okay
	@JsonKey(name:'characterUninstancedItemComponents')
	Map<String, DestinyBaseItemComponentSetOfuint32> characterUninstancedItemComponents;

	/// COMPONENT TYPE: PresentationNodes
	@JsonKey(name:'characterPresentationNodes')
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent characterPresentationNodes;

	/// COMPONENT TYPE: Records
	@JsonKey(name:'characterRecords')
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent characterRecords;

	/// COMPONENT TYPE: Collectibles
	@JsonKey(name:'characterCollectibles')
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent characterCollectibles;

	/// Information about instanced items across all returned characters, keyed by the item&#39;s instance ID.
	/// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
	@JsonKey(name:'itemComponents')
	DestinyItemComponentSetOfint64 itemComponents;

	/// A &quot;lookup&quot; convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
	/// COMPONENT TYPE: CurrencyLookups
	@JsonKey(name:'characterCurrencyLookups')
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent characterCurrencyLookups;
	DestinyProfileResponse();

	factory DestinyProfileResponse.fromJson(Map<String, dynamic> json) => _$DestinyProfileResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileResponseToJson(this);
}
