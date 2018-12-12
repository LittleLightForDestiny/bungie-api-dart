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

	static DestinyItemComponentSetOfint64 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfint64(
				DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromMap(data['instances']),
				DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromMap(data['perks']),
				DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromMap(data['renderData']),
				DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromMap(data['stats']),
				DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromMap(data['sockets']),
				DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromMap(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(data['plugStates']),
				DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromMap(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfint64> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfint64> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfint64.fromMap(item));
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