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

	static DestinyItemObjectiveBlockDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinyItemObjectiveBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemObjectiveBlockDefinition.fromJson(item));
    });
    return list;
	}
}