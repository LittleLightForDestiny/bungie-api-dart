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
	Map<String, DestinyBaseItemComponentSetOfuint32> characterUninstancedItemComponents;
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent characterPresentationNodes;
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent characterRecords;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent characterCollectibles;
	DestinyItemComponentSetOfint64 itemComponents;
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