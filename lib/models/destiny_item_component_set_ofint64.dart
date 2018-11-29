import 'dictionary_component_response_ofint64_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';
class DestinyItemComponentSetOfint64{
	DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent instances;
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent perks;
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent renderData;
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent stats;
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent sockets;
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent talentGrids;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfint64(
		DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent this.instances,
		DictionaryComponentResponseOfint64AndDestinyItemPerksComponent this.perks,
		DictionaryComponentResponseOfint64AndDestinyItemRenderComponent this.renderData,
		DictionaryComponentResponseOfint64AndDestinyItemStatsComponent this.stats,
		DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent this.sockets,
		DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent this.talentGrids,
		DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent this.plugStates,
		DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyItemComponentSetOfint64 fromJson(Map<String, dynamic> data){
		return new DestinyItemComponentSetOfint64(
				DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromJson(data['instances']),
				DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromJson(data['perks']),
				DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromJson(data['renderData']),
				DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromJson(data['stats']),
				DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(data['sockets']),
				DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromJson(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(data['plugStates']),
				DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfint64> fromList(List<dynamic> data){
		List<DestinyItemComponentSetOfint64> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfint64.fromJson(item));
    });
    return list;
	}
}