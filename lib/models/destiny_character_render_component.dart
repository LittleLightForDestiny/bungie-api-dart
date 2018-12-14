import 'dye_reference.dart';
import 'destiny_character_customization.dart';
import 'destiny_character_peer_view.dart';
class DestinyCharacterRenderComponent{
	List<DyeReference> customDyes;
	DestinyCharacterCustomization customization;
	DestinyCharacterPeerView peerView;
	DestinyCharacterRenderComponent(
		this.customDyes,
		this.customization,
		this.peerView,
	);

	static DestinyCharacterRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterRenderComponent(
				data['customDyes'] != null ? DyeReference.fromList(data['customDyes']) : null,
				data['customization'] != null ? DestinyCharacterCustomization.fromMap(data['customization']) : null,
				data['peerView'] != null ? DestinyCharacterPeerView.fromMap(data['peerView']) : null,
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