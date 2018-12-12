import 'single_component_response_of_destiny_vendor_receipts_component.dart';
import 'single_component_response_of_destiny_inventory_component.dart';
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
import 'dictionary_component_response_ofint64_and_destiny_inventory_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_kiosks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.dart';
import 'destiny_base_item_component_set_ofuint32.dart';
import 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_character_records_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofint64.dart';
import 'dictionary_component_response_ofint64_and_destiny_currencies_component.dart';
class DestinyProfileResponse{
	SingleComponentResponseOfDestinyVendorReceiptsComponent vendorReceipts;
	SingleComponentResponseOfDestinyInventoryComponent profileInventory;
	SingleComponentResponseOfDestinyInventoryComponent profileCurrencies;
	SingleComponentResponseOfDestinyProfileComponent profile;
	SingleComponentResponseOfDestinyKiosksComponent profileKiosks;
	SingleComponentResponseOfDestinyPlugSetsComponent profilePlugSets;
	SingleComponentResponseOfDestinyProfileProgressionComponent profileProgression;
	SingleComponentResponseOfDestinyPresentationNodesComponent profilePresentationNodes;
	SingleComponentResponseOfDestinyProfileRecordsComponent profileRecords;
	SingleComponentResponseOfDestinyProfileCollectiblesComponent profileCollectibles;
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent characters;
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterInventories;
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent characterProgressions;
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent characterRenderData;
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent characterActivities;
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent characterEquipment;
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent characterKiosks;
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent characterPlugSets;
	Map<DestinyBaseItemComponentSetOfuint32, dynamic> characterUninstancedItemComponents;
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent characterPresentationNodes;
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent characterRecords;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent characterCollectibles;
	DestinyItemComponentSetOfint64 itemComponents;
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent characterCurrencyLookups;
	DestinyProfileResponse(
		SingleComponentResponseOfDestinyVendorReceiptsComponent this.vendorReceipts,
		SingleComponentResponseOfDestinyInventoryComponent this.profileInventory,
		SingleComponentResponseOfDestinyInventoryComponent this.profileCurrencies,
		SingleComponentResponseOfDestinyProfileComponent this.profile,
		SingleComponentResponseOfDestinyKiosksComponent this.profileKiosks,
		SingleComponentResponseOfDestinyPlugSetsComponent this.profilePlugSets,
		SingleComponentResponseOfDestinyProfileProgressionComponent this.profileProgression,
		SingleComponentResponseOfDestinyPresentationNodesComponent this.profilePresentationNodes,
		SingleComponentResponseOfDestinyProfileRecordsComponent this.profileRecords,
		SingleComponentResponseOfDestinyProfileCollectiblesComponent this.profileCollectibles,
		DictionaryComponentResponseOfint64AndDestinyCharacterComponent this.characters,
		DictionaryComponentResponseOfint64AndDestinyInventoryComponent this.characterInventories,
		DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent this.characterProgressions,
		DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent this.characterRenderData,
		DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent this.characterActivities,
		DictionaryComponentResponseOfint64AndDestinyInventoryComponent this.characterEquipment,
		DictionaryComponentResponseOfint64AndDestinyKiosksComponent this.characterKiosks,
		DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent this.characterPlugSets,
		Map<DestinyBaseItemComponentSetOfuint32, dynamic> this.characterUninstancedItemComponents,
		DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent this.characterPresentationNodes,
		DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent this.characterRecords,
		DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent this.characterCollectibles,
		DestinyItemComponentSetOfint64 this.itemComponents,
		DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent this.characterCurrencyLookups,
	);

	static DestinyProfileResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileResponse(
				data['vendorReceipts'],
				data['profileInventory'],
				data['profileCurrencies'],
				data['profile'],
				data['profileKiosks'],
				data['profilePlugSets'],
				data['profileProgression'],
				data['profilePresentationNodes'],
				data['profileRecords'],
				data['profileCollectibles'],
				data['characters'],
				data['characterInventories'],
				data['characterProgressions'],
				data['characterRenderData'],
				data['characterActivities'],
				data['characterEquipment'],
				data['characterKiosks'],
				data['characterPlugSets'],
				data['characterUninstancedItemComponents'],
				data['characterPresentationNodes'],
				data['characterRecords'],
				data['characterCollectibles'],
				data['itemComponents'],
				data['characterCurrencyLookups'],
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
			data['vendorReceipts'] = this.vendorReceipts;
			data['profileInventory'] = this.profileInventory;
			data['profileCurrencies'] = this.profileCurrencies;
			data['profile'] = this.profile;
			data['profileKiosks'] = this.profileKiosks;
			data['profilePlugSets'] = this.profilePlugSets;
			data['profileProgression'] = this.profileProgression;
			data['profilePresentationNodes'] = this.profilePresentationNodes;
			data['profileRecords'] = this.profileRecords;
			data['profileCollectibles'] = this.profileCollectibles;
			data['characters'] = this.characters;
			data['characterInventories'] = this.characterInventories;
			data['characterProgressions'] = this.characterProgressions;
			data['characterRenderData'] = this.characterRenderData;
			data['characterActivities'] = this.characterActivities;
			data['characterEquipment'] = this.characterEquipment;
			data['characterKiosks'] = this.characterKiosks;
			data['characterPlugSets'] = this.characterPlugSets;
			data['characterUninstancedItemComponents'] = this.characterUninstancedItemComponents;
			data['characterPresentationNodes'] = this.characterPresentationNodes;
			data['characterRecords'] = this.characterRecords;
			data['characterCollectibles'] = this.characterCollectibles;
			data['itemComponents'] = this.itemComponents;
			data['characterCurrencyLookups'] = this.characterCurrencyLookups;
		return data;
	}
}