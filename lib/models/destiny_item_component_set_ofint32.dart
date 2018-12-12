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

	static DestinyItemComponentSetOfint32 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfint32(
				DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromMap(data['instances']),
				DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromMap(data['perks']),
				DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromMap(data['renderData']),
				DictionaryComponentResponseOfint32AndDestinyItemStatsComponent.fromMap(data['stats']),
				DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromMap(data['sockets']),
				DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromMap(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(data['plugStates']),
				DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromMap(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfint32> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfint32.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['instances'] = instances.toMap();
			data['perks'] = perks.toMap();
			data['renderData'] = renderData.toMap();
			data['stats'] = stats.toMap();
			data['sockets'] = sockets.toMap();
			data['talentGrids'] = talentGrids.toMap();
			data['plugStates'] = plugStates.toMap();
			data['objectives'] = objectives.toMap();
	}
}