import 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
class DestinyItemComponentSetOfuint32{
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent instances;
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent perks;
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent renderData;
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent stats;
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent sockets;
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent talentGrids;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfuint32(
		DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent this.instances,
		DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent this.perks,
		DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent this.renderData,
		DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent this.stats,
		DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent this.sockets,
		DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent this.talentGrids,
		DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent this.plugStates,
		DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyItemComponentSetOfuint32 fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfuint32(
				DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromJson(data['instances']),
				DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(data['perks']),
				DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromJson(data['renderData']),
				DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromJson(data['stats']),
				DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(data['sockets']),
				DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromJson(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(data['plugStates']),
				DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromJson(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfuint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfuint32> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfuint32.fromJson(item));
    });
    return list;
	}
}