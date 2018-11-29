import 'destiny_item_socket_state.dart';
class DestinyItemSocketsComponent{
	List<DestinyItemSocketState> sockets;
	DestinyItemSocketsComponent(
		List<DestinyItemSocketState> this.sockets,
	);

	static DestinyItemSocketsComponent fromJson(Map<String, dynamic> data){
		return new DestinyItemSocketsComponent(
				DestinyItemSocketState.fromList(data['sockets']),
		);
	}

	static List<DestinyItemSocketsComponent> fromList(List<dynamic> data){
		List<DestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketsComponent.fromJson(item));
    });
    return list;
	}
}