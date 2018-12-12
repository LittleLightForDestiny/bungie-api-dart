import 'destiny_objective_display_properties.dart';
class DestinyItemObjectiveBlockDefinition{
	List<int> objectiveHashes;
	List<int> displayActivityHashes;
	bool requireFullObjectiveCompletion;
	int questlineItemHash;
	String narrative;
	String objectiveVerbName;
	String questTypeIdentifier;
	int questTypeHash;
	List<DestinyObjectiveDisplayProperties> perObjectiveDisplayProperties;
	DestinyItemObjectiveBlockDefinition(
		List<int> this.objectiveHashes,
		List<int> this.displayActivityHashes,
		bool this.requireFullObjectiveCompletion,
		int this.questlineItemHash,
		String this.narrative,
		String this.objectiveVerbName,
		String this.questTypeIdentifier,
		int this.questTypeHash,
		List<DestinyObjectiveDisplayProperties> this.perObjectiveDisplayProperties,
	);

	static DestinyItemObjectiveBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemObjectiveBlockDefinition(
				data['objectiveHashes'],
				data['displayActivityHashes'],
				data['requireFullObjectiveCompletion'],
				data['questlineItemHash'],
				data['narrative'],
				data['objectiveVerbName'],
				data['questTypeIdentifier'],
				data['questTypeHash'],
				DestinyObjectiveDisplayProperties.fromList(data['perObjectiveDisplayProperties']),
		);
	}

	static List<DestinyItemObjectiveBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemObjectiveBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemObjectiveBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHashes'] = this.objectiveHashes;
			data['displayActivityHashes'] = this.displayActivityHashes;
			data['requireFullObjectiveCompletion'] = this.requireFullObjectiveCompletion;
			data['questlineItemHash'] = this.questlineItemHash;
			data['narrative'] = this.narrative;
			data['objectiveVerbName'] = this.objectiveVerbName;
			data['questTypeIdentifier'] = this.questTypeIdentifier;
			data['questTypeHash'] = this.questTypeHash;
			data['perObjectiveDisplayProperties'] = this.perObjectiveDisplayProperties.map((item)=>item.toMap()).toList();
		return data;
	}
}