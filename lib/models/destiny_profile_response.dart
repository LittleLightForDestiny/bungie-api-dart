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

/** The response for GetDestinyProfile, with components for character and item-level data. */
class DestinyProfileResponse{
	
	/** Recent, refundable purchases you have made from vendors. When will you use it? Couldn't say...
COMPONENT TYPE: VendorReceipts */
	SingleComponentResponseOfDestinyVendorReceiptsComponent vendorReceipts;
	
	/** The profile-level inventory of the Destiny Profile.
COMPONENT TYPE: ProfileInventories */
	SingleComponentResponseOfDestinyInventoryComponent profileInventory;
	
	/** The profile-level currencies owned by the Destiny Profile.
COMPONENT TYPE: ProfileCurrencies */
	SingleComponentResponseOfDestinyInventoryComponent profileCurrencies;
	
	/** The basic information about the Destiny Profile (formerly "Account").
COMPONENT TYPE: Profiles */
	SingleComponentResponseOfDestinyProfileComponent profile;
	
	/** Items available from Kiosks that are available Profile-wide (i.e. across all characters)
This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the characterKiosks property.
COMPONENT TYPE: Kiosks */
	SingleComponentResponseOfDestinyKiosksComponent profileKiosks;
	
	/** When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are profile-scoped.
This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
COMPONENT TYPE: ItemSockets */
	SingleComponentResponseOfDestinyPlugSetsComponent profilePlugSets;
	
	/** When we have progression information - such as Checklists - that may apply profile-wide, it will be returned here rather than in the per-character progression data.
COMPONENT TYPE: ProfileProgression */
	SingleComponentResponseOfDestinyProfileProgressionComponent profileProgression;
	
	/** COMPONENT TYPE: PresentationNodes */
	SingleComponentResponseOfDestinyPresentationNodesComponent profilePresentationNodes;
	
	/** COMPONENT TYPE: Records */
	SingleComponentResponseOfDestinyProfileRecordsComponent profileRecords;
	
	/** COMPONENT TYPE: Collectibles */
	SingleComponentResponseOfDestinyProfileCollectiblesComponent profileCollectibles;
	
	/** Basic information about each character, keyed by the CharacterId.
COMPONENT TYPE: Characters */
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent characters;
	
	/** The character-level non-equipped inventory items, keyed by the Character's Id.
COMPONENT TYPE: CharacterInventories */
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterInventories;
	
	/** Character-level progression data, keyed by the Character's Id.
COMPONENT TYPE: CharacterProgressions */
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent characterProgressions;
	
	/** Character rendering data - a minimal set of info needed to render a character in 3D - keyed by the Character's Id.
COMPONENT TYPE: CharacterRenderData */
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent characterRenderData;
	
	/** Character activity data - the activities available to this character and its status, keyed by the Character's Id.
COMPONENT TYPE: CharacterActivities */
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent characterActivities;
	
	/** The character's equipped items, keyed by the Character's Id.
COMPONENT TYPE: CharacterEquipment */
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterEquipment;
	
	/** Items available from Kiosks that are available to a specific character as opposed to the account as a whole. It must be combined with data from the profileKiosks property to get a full picture of the character's available items to check out of a kiosk.
This component returns information about what Kiosk items are available to you on a *Character* level. Usually, kiosk items will be earned for the entire Profile (all characters) at once. To find those, look in the profileKiosks property.
COMPONENT TYPE: Kiosks */
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent characterKiosks;
	
	/** When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states, per character, that are character-scoped.
This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
COMPONENT TYPE: ItemSockets */
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent characterPlugSets;
	
	/** Do you ever get the feeling that a system was designed *too* flexibly? That it can be used in so many different ways that you end up being unable to provide an easy to use abstraction for the mess that's happening under the surface?
Let's talk about character-specific data that might be related to items without instances. These two statements are totally unrelated, I promise.
At some point during D2, it was decided that items - such as Bounties - could be given to characters and *not* have instance data, but that *could* display and even use relevant state information on your account and character.
Up to now, any item that had meaningful dependencies on character or account state had to be instanced, and thus "itemComponents" was all that you needed: it was keyed by item's instance IDs and provided the stateful information you needed inside.
Unfortunately, we don't live in such a magical world anymore. This is information held on a per-character basis about non-instanced items that the characters have in their inventory - or that reference character-specific state information even if it's in Account-level inventory - and the values related to that item's state in relation to the given character.
To give a concrete example, look at a Moments of Triumph bounty. They exist in a character's inventory, and show/care about a character's progression toward completing the bounty. But the bounty itself is a non-instanced item, like a mod or a currency. This returns that data for the characters who have the bounty in their inventory.
I'm not crying, you're crying Okay we're both crying but it's going to be okay I promise Actually I shouldn't promise that, I don't know if it's going to be okay */
	Map<String, DestinyBaseItemComponentSetOfuint32> characterUninstancedItemComponents;
	
	/** COMPONENT TYPE: PresentationNodes */
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent characterPresentationNodes;
	
	/** COMPONENT TYPE: Records */
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent characterRecords;
	
	/** COMPONENT TYPE: Collectibles */
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent characterCollectibles;
	
	/** Information about instanced items across all returned characters, keyed by the item's instance ID.
COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
	DestinyItemComponentSetOfint64 itemComponents;
	
	/** A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
COMPONENT TYPE: CurrencyLookups */
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent characterCurrencyLookups;
	DestinyProfileResponse(
		this.vendorReceipts,
		this.profileInventory,
		this.profileCurrencies,
		this.profile,
		this.profileKiosks,
		this.profilePlugSets,
		this.profileProgression,
		this.profilePresentationNodes,
		this.profileRecords,
		this.profileCollectibles,
		this.characters,
		this.characterInventories,
		this.characterProgressions,
		this.characterRenderData,
		this.characterActivities,
		this.characterEquipment,
		this.characterKiosks,
		this.characterPlugSets,
		this.characterUninstancedItemComponents,
		this.characterPresentationNodes,
		this.characterRecords,
		this.characterCollectibles,
		this.itemComponents,
		this.characterCurrencyLookups,
	);

	static DestinyProfileResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileResponse(
				data['vendorReceipts'] != null ? SingleComponentResponseOfDestinyVendorReceiptsComponent.fromMap(data['vendorReceipts']) : null,
				data['profileInventory'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['profileInventory']) : null,
				data['profileCurrencies'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['profileCurrencies']) : null,
				data['profile'] != null ? SingleComponentResponseOfDestinyProfileComponent.fromMap(data['profile']) : null,
				data['profileKiosks'] != null ? SingleComponentResponseOfDestinyKiosksComponent.fromMap(data['profileKiosks']) : null,
				data['profilePlugSets'] != null ? SingleComponentResponseOfDestinyPlugSetsComponent.fromMap(data['profilePlugSets']) : null,
				data['profileProgression'] != null ? SingleComponentResponseOfDestinyProfileProgressionComponent.fromMap(data['profileProgression']) : null,
				data['profilePresentationNodes'] != null ? SingleComponentResponseOfDestinyPresentationNodesComponent.fromMap(data['profilePresentationNodes']) : null,
				data['profileRecords'] != null ? SingleComponentResponseOfDestinyProfileRecordsComponent.fromMap(data['profileRecords']) : null,
				data['profileCollectibles'] != null ? SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromMap(data['profileCollectibles']) : null,
				data['characters'] != null ? DictionaryComponentResponseOfint64AndDestinyCharacterComponent.fromMap(data['characters']) : null,
				data['characterInventories'] != null ? DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromMap(data['characterInventories']) : null,
				data['characterProgressions'] != null ? DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent.fromMap(data['characterProgressions']) : null,
				data['characterRenderData'] != null ? DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent.fromMap(data['characterRenderData']) : null,
				data['characterActivities'] != null ? DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromMap(data['characterActivities']) : null,
				data['characterEquipment'] != null ? DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromMap(data['characterEquipment']) : null,
				data['characterKiosks'] != null ? DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromMap(data['characterKiosks']) : null,
				data['characterPlugSets'] != null ? DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromMap(data['characterPlugSets']) : null,
				data['characterUninstancedItemComponents'] != null ? Map<String, DestinyBaseItemComponentSetOfuint32>.from(data['characterUninstancedItemComponents'].map((k, v)=>MapEntry(k, DestinyBaseItemComponentSetOfuint32.fromMap(v)))) : null,
				data['characterPresentationNodes'] != null ? DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromMap(data['characterPresentationNodes']) : null,
				data['characterRecords'] != null ? DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent.fromMap(data['characterRecords']) : null,
				data['characterCollectibles'] != null ? DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromMap(data['characterCollectibles']) : null,
				data['itemComponents'] != null ? DestinyItemComponentSetOfint64.fromMap(data['itemComponents']) : null,
				data['characterCurrencyLookups'] != null ? DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromMap(data['characterCurrencyLookups']) : null,
		);
	}

	static List<DestinyProfileResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorReceipts'] = this.vendorReceipts != null? this.vendorReceipts.toMap() : null;
			data['profileInventory'] = this.profileInventory != null? this.profileInventory.toMap() : null;
			data['profileCurrencies'] = this.profileCurrencies != null? this.profileCurrencies.toMap() : null;
			data['profile'] = this.profile != null? this.profile.toMap() : null;
			data['profileKiosks'] = this.profileKiosks != null? this.profileKiosks.toMap() : null;
			data['profilePlugSets'] = this.profilePlugSets != null? this.profilePlugSets.toMap() : null;
			data['profileProgression'] = this.profileProgression != null? this.profileProgression.toMap() : null;
			data['profilePresentationNodes'] = this.profilePresentationNodes != null? this.profilePresentationNodes.toMap() : null;
			data['profileRecords'] = this.profileRecords != null? this.profileRecords.toMap() : null;
			data['profileCollectibles'] = this.profileCollectibles != null? this.profileCollectibles.toMap() : null;
			data['characters'] = this.characters != null? this.characters.toMap() : null;
			data['characterInventories'] = this.characterInventories != null? this.characterInventories.toMap() : null;
			data['characterProgressions'] = this.characterProgressions != null? this.characterProgressions.toMap() : null;
			data['characterRenderData'] = this.characterRenderData != null? this.characterRenderData.toMap() : null;
			data['characterActivities'] = this.characterActivities != null? this.characterActivities.toMap() : null;
			data['characterEquipment'] = this.characterEquipment != null? this.characterEquipment.toMap() : null;
			data['characterKiosks'] = this.characterKiosks != null? this.characterKiosks.toMap() : null;
			data['characterPlugSets'] = this.characterPlugSets != null? this.characterPlugSets.toMap() : null;
			data['characterUninstancedItemComponents'] = this.characterUninstancedItemComponents != null? this.characterUninstancedItemComponents.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['characterPresentationNodes'] = this.characterPresentationNodes != null? this.characterPresentationNodes.toMap() : null;
			data['characterRecords'] = this.characterRecords != null? this.characterRecords.toMap() : null;
			data['characterCollectibles'] = this.characterCollectibles != null? this.characterCollectibles.toMap() : null;
			data['itemComponents'] = this.itemComponents != null? this.itemComponents.toMap() : null;
			data['characterCurrencyLookups'] = this.characterCurrencyLookups != null? this.characterCurrencyLookups.toMap() : null;
		return data;
	}
}