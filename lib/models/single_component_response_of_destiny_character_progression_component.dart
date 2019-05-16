import 'destiny_character_progression_component.dart';

/**  */
class SingleComponentResponseOfDestinyCharacterProgressionComponent{
	
	/** This component returns anything that could be considered "Progression" on a user: data where the user is gaining levels, reputation, completions, rewards, etc... */
	DestinyCharacterProgressionComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyCharacterProgressionComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterProgressionComponent(
				data['data'] != null ? DestinyCharacterProgressionComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}