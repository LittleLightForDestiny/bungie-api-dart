import 'destiny_character_render_component.dart';
class SingleComponentResponseOfDestinyCharacterRenderComponent{
	DestinyCharacterRenderComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterRenderComponent(
		DestinyCharacterRenderComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterRenderComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCharacterRenderComponent(
				DestinyCharacterRenderComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterRenderComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterRenderComponent.fromJson(item));
    });
    return list;
	}
}