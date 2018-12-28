
/** The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there's less guitars on fire. Yet. #spoileralert?
This will include information such as Checklist info. */
class DestinyProfileProgressionComponent{
	
	/** The set of checklists that can be examined on a profile-wide basis, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet. */
	Map<String, Map<String, bool>> checklists;
	DestinyProfileProgressionComponent(
		this.checklists,
	);

	static DestinyProfileProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileProgressionComponent(
				data['checklists'] != null ? Map<String, Map<String, bool>>.from(data['checklists'].map((k, v)=>MapEntry(k, Map<String, bool>.from(v.map((k, v)=>MapEntry(k, v)))))) : null,
		);
	}

	static List<DestinyProfileProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['checklists'] = this.checklists;
		return data;
	}
}