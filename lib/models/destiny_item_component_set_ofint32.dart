import 'dictionary_component_response_ofint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';
class DestinyItemComponentSetOfint32{
	DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent instances;
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent perks;
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent renderData;
	DictionaryComponentResponseOfint32AndDestinyItemStatsComponent stats;
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent sockets;
	DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent talentGrids;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfint32(
		DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent this.instances,
		DictionaryComponentResponseOfint32AndDestinyItemPerksComponent this.perks,
		DictionaryComponentResponseOfint32AndDestinyItemRenderComponent this.renderData,
		DictionaryComponentResponseOfint32AndDestinyItemStatsComponent this.stats,
		DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent this.sockets,
		DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent this.talentGrids,
		DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent this.plugStates,
		DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyItemComponentSetOfint32 fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfint32(
				DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromJson(data['instances']),
				DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(data['perks']),
				DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromJson(data['renderData']),
				DictionaryComponentResponseOfint32AndDestinyItemStatsComponent.fromJson(data['stats']),
				DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromJson(data['sockets']),
				DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromJson(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(data['plugStates']),
				DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfint32> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfint32.fromJson(item));
    });
    return list;
	}
}