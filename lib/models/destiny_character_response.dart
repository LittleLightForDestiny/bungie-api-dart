import 'single_component_response_of_destiny_inventory_component.dart';
import 'single_component_response_of_destiny_character_component.dart';
import 'single_component_response_of_destiny_character_progression_component.dart';
import 'single_component_response_of_destiny_character_render_component.dart';
import 'single_component_response_of_destiny_character_activities_component.dart';
import 'single_component_response_of_destiny_inventory_component.dart';
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
		SingleComponentResponseOfDestinyInventoryComponent this.inventory,
		SingleComponentResponseOfDestinyCharacterComponent this.character,
		SingleComponentResponseOfDestinyCharacterProgressionComponent this.progressions,
		SingleComponentResponseOfDestinyCharacterRenderComponent this.renderData,
		SingleComponentResponseOfDestinyCharacterActivitiesComponent this.activities,
		SingleComponentResponseOfDestinyInventoryComponent this.equipment,
		SingleComponentResponseOfDestinyKiosksComponent this.kiosks,
		SingleComponentResponseOfDestinyPlugSetsComponent this.plugSets,
		SingleComponentResponseOfDestinyPresentationNodesComponent this.presentationNodes,
		SingleComponentResponseOfDestinyCharacterRecordsComponent this.records,
		SingleComponentResponseOfDestinyCollectiblesComponent this.collectibles,
		DestinyItemComponentSetOfint64 this.itemComponents,
		DestinyBaseItemComponentSetOfuint32 this.uninstancedItemComponents,
		SingleComponentResponseOfDestinyCurrenciesComponent this.currencyLookups,
	);

	static DestinyCharacterResponse fromJson(Map<String, dynamic> data){
		return new DestinyCharacterResponse(
				data['inventory'],
				data['character'],
				data['progressions'],
				data['renderData'],
				data['activities'],
				data['equipment'],
				data['kiosks'],
				data['plugSets'],
				data['presentationNodes'],
				data['records'],
				data['collectibles'],
				data['itemComponents'],
				data['uninstancedItemComponents'],
				data['currencyLookups'],
		);
	}

	static List<DestinyCharacterResponse> fromList(List<dynamic> data){
		List<DestinyCharacterResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterResponse.fromJson(item));
    });
    return list;
	}
}