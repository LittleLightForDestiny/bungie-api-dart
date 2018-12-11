import 'destiny_character_render_component.dart';
class SingleComponentResponseOfDestinyCharacterRenderComponent{
	DestinyCharacterRenderComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterRenderComponent(
		DestinyCharacterRenderComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterRenderComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterRenderComponent(
				DestinyCharacterRenderComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterRenderComponent.fromJson(item));
    });
    return list;
	}
}