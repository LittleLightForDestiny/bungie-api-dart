import 'destiny_profile_progression_component.dart';

/**  */
class SingleComponentResponseOfDestinyProfileProgressionComponent{
	
	/** The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there's less guitars on fire. Yet. #spoileralert?
This will include information such as Checklist info. */
	DestinyProfileProgressionComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyProfileProgressionComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileProgressionComponent(
				data['data'] != null ? DestinyProfileProgressionComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileProgressionComponent.fromMap(item));
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