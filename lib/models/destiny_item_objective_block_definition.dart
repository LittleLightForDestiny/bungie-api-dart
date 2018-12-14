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
		this.objectiveHashes,
		this.displayActivityHashes,
		this.requireFullObjectiveCompletion,
		this.questlineItemHash,
		this.narrative,
		this.objectiveVerbName,
		this.questTypeIdentifier,
		this.questTypeHash,
		this.perObjectiveDisplayProperties,
	);

	static DestinyItemObjectiveBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemObjectiveBlockDefinition(
				data['objectiveHashes'] != null ? data['objectiveHashes']?.cast<int>() ?? null : null,
				data['displayActivityHashes'] != null ? data['displayActivityHashes']?.cast<int>() ?? null : null,
				data['requireFullObjectiveCompletion'],
				data['questlineItemHash'],
				data['narrative'],
				data['objectiveVerbName'],
				data['questTypeIdentifier'],
				data['questTypeHash'],
				data['perObjectiveDisplayProperties'] != null ? DestinyObjectiveDisplayProperties.fromList(data['perObjectiveDisplayProperties']) : null,
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