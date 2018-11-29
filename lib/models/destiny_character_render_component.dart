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

	static DestinyCharacterRenderComponent fromJson(Map<String, dynamic> data){
		return new DestinyCharacterRenderComponent(
				DyeReference.fromList(data['customDyes']),
				data['customization'],
				data['peerView'],
		);
	}

	static List<DestinyCharacterRenderComponent> fromList(List<dynamic> data){
		List<DestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterRenderComponent.fromJson(item));
    });
    return list;
	}
}