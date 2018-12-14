import 'destiny_character_render_component.dart';
class SingleComponentResponseOfDestinyCharacterRenderComponent{
	DestinyCharacterRenderComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterRenderComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterRenderComponent(
				data['data'] != null ? DestinyCharacterRenderComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}