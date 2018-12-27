import 'single_component_response_of_destiny_inventory_component.dart';
import 'single_component_response_of_destiny_character_component.dart';
import 'single_component_response_of_destiny_character_progression_component.dart';
import 'single_component_response_of_destiny_character_render_component.dart';
import 'single_component_response_of_destiny_character_activities_component.dart';
import 'single_component_response_of_destiny_kiosks_component.dart';
import 'single_component_response_of_destiny_plug_sets_component.dart';
import 'single_component_response_of_destiny_presentation_nodes_component.dart';
import 'single_component_response_of_destiny_character_records_component.dart';
import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofint64.dart';
import 'destiny_base_item_component_set_ofuint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';
class DestinyCharacterResponse{
	SingleComponentResponseOfDestinyInventoryComponent inventory;
	SingleComponentResponseOfDestinyCharacterComponent character;
	SingleComponentResponseOfDestinyCharacterProgressionComponent progressions;
	SingleComponentResponseOfDestinyCharacterRenderComponent renderData;
	SingleComponentResponseOfDestinyCharacterActivitiesComponent activities;
	SingleComponentResponseOfDestinyInventoryComponent equipment;
	SingleComponentResponseOfDestinyKiosksComponent kiosks;
	SingleComponentResponseOfDestinyPlugSetsComponent plugSets;
	SingleComponentResponseOfDestinyPresentationNodesComponent presentationNodes;
	SingleComponentResponseOfDestinyCharacterRecordsComponent records;
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
	DestinyItemComponentSetOfint64 itemComponents;
	DestinyBaseItemComponentSetOfuint32 uninstancedItemComponents;
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyCharacterResponse(
		this.inventory,
		this.character,
		this.progressions,
		this.renderData,
		this.activities,
		this.equipment,
		this.kiosks,
		this.plugSets,
		this.presentationNodes,
		this.records,
		this.collectibles,
		this.itemComponents,
		this.uninstancedItemComponents,
		this.currencyLookups,
	);

	static DestinyCharacterResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterResponse(
				data['inventory'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['inventory']) : null,
				data['character'] != null ? SingleComponentResponseOfDestinyCharacterComponent.fromMap(data['character']) : null,
				data['progressions'] != null ? SingleComponentResponseOfDestinyCharacterProgressionComponent.fromMap(data['progressions']) : null,
				data['renderData'] != null ? SingleComponentResponseOfDestinyCharacterRenderComponent.fromMap(data['renderData']) : null,
				data['activities'] != null ? SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromMap(data['activities']) : null,
				data['equipment'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['equipment']) : null,
				data['kiosks'] != null ? SingleComponentResponseOfDestinyKiosksComponent.fromMap(data['kiosks']) : null,
				data['plugSets'] != null ? SingleComponentResponseOfDestinyPlugSetsComponent.fromMap(data['plugSets']) : null,
				data['presentationNodes'] != null ? SingleComponentResponseOfDestinyPresentationNodesComponent.fromMap(data['presentationNodes']) : null,
				data['records'] != null ? SingleComponentResponseOfDestinyCharacterRecordsComponent.fromMap(data['records']) : null,
				data['collectibles'] != null ? SingleComponentResponseOfDestinyCollectiblesComponent.fromMap(data['collectibles']) : null,
				data['itemComponents'] != null ? DestinyItemComponentSetOfint64.fromMap(data['itemComponents']) : null,
				data['uninstancedItemComponents'] != null ? DestinyBaseItemComponentSetOfuint32.fromMap(data['uninstancedItemComponents']) : null,
				data['currencyLookups'] != null ? SingleComponentResponseOfDestinyCurrenciesComponent.fromMap(data['currencyLookups']) : null,
		);
	}

	static List<DestinyCharacterResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['inventory'] = this.inventory;
			data['character'] = this.character;
			data['progressions'] = this.progressions;
			data['renderData'] = this.renderData;
			data['activities'] = this.activities;
			data['equipment'] = this.equipment;
			data['kiosks'] = this.kiosks;
			data['plugSets'] = this.plugSets;
			data['presentationNodes'] = this.presentationNodes;
			data['records'] = this.records;
			data['collectibles'] = this.collectibles;
			data['itemComponents'] = this.itemComponents;
			data['uninstancedItemComponents'] = this.uninstancedItemComponents;
			data['currencyLookups'] = this.currencyLookups;
		return data;
	}
}