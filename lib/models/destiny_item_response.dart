import 'single_component_response_of_destiny_item_component.dart';
import 'single_component_response_of_destiny_item_instance_component.dart';
import 'single_component_response_of_destiny_item_objectives_component.dart';
import 'single_component_response_of_destiny_item_perks_component.dart';
import 'single_component_response_of_destiny_item_render_component.dart';
import 'single_component_response_of_destiny_item_stats_component.dart';
import 'single_component_response_of_destiny_item_talent_grid_component.dart';
import 'single_component_response_of_destiny_item_sockets_component.dart';
class DestinyItemResponse{
	String characterId;
	SingleComponentResponseOfDestinyItemComponent item;
	SingleComponentResponseOfDestinyItemInstanceComponent instance;
	SingleComponentResponseOfDestinyItemObjectivesComponent objectives;
	SingleComponentResponseOfDestinyItemPerksComponent perks;
	SingleComponentResponseOfDestinyItemRenderComponent renderData;
	SingleComponentResponseOfDestinyItemStatsComponent stats;
	SingleComponentResponseOfDestinyItemTalentGridComponent talentGrid;
	SingleComponentResponseOfDestinyItemSocketsComponent sockets;
	DestinyItemResponse(
		String this.characterId,
		SingleComponentResponseOfDestinyItemComponent this.item,
		SingleComponentResponseOfDestinyItemInstanceComponent this.instance,
		SingleComponentResponseOfDestinyItemObjectivesComponent this.objectives,
		SingleComponentResponseOfDestinyItemPerksComponent this.perks,
		SingleComponentResponseOfDestinyItemRenderComponent this.renderData,
		SingleComponentResponseOfDestinyItemStatsComponent this.stats,
		SingleComponentResponseOfDestinyItemTalentGridComponent this.talentGrid,
		SingleComponentResponseOfDestinyItemSocketsComponent this.sockets,
	);

	static DestinyItemResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemResponse(
				data['characterId'],
				data['item'],
				data['instance'],
				data['objectives'],
				data['perks'],
				data['renderData'],
				data['stats'],
				data['talentGrid'],
				data['sockets'],
		);
	}

	static List<DestinyItemResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['characterId'] = this.characterId;
			data['item'] = this.item;
			data['instance'] = this.instance;
			data['objectives'] = this.objectives;
			data['perks'] = this.perks;
			data['renderData'] = this.renderData;
			data['stats'] = this.stats;
			data['talentGrid'] = this.talentGrid;
			data['sockets'] = this.sockets;
		return data;
	}
}