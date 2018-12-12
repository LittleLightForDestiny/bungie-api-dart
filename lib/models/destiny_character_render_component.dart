import 'dye_reference.dart';
import 'destiny_character_customization.dart';
import 'destiny_character_peer_view.dart';
class DestinyCharacterRenderComponent{
	List<DyeReference> customDyes;
	DestinyCharacterCustomization customization;
	DestinyCharacterPeerView peerView;
	DestinyCharacterRenderComponent(
		List<DyeReference> this.customDyes,
		DestinyCharacterCustomization this.customization,
		DestinyCharacterPeerView this.peerView,
	);

	static DestinyCharacterRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterRenderComponent(
				DyeReference.fromList(data['customDyes']),
				data['customization'],
				data['peerView'],
		);
	}

	static List<DestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['customDyes'] = this.customDyes.map((item)=>item.toMap()).toList();
			data['customization'] = this.customization;
			data['peerView'] = this.peerView;
		return data;
	}
}