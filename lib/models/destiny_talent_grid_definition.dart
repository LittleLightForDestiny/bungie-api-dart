import 'destiny_talent_node_definition.dart';
import 'destiny_talent_node_exclusive_set_definition.dart';
import 'destiny_talent_exclusive_group.dart';
import 'destiny_talent_node_category.dart';
class DestinyTalentGridDefinition{
	int maxGridLevel;
	int gridLevelPerColumn;
	int progressionHash;
	List<DestinyTalentNodeDefinition> nodes;
	List<DestinyTalentNodeExclusiveSetDefinition> exclusiveSets;
	List<int> independentNodeIndexes;
	Map<DestinyTalentExclusiveGroup, dynamic> groups;
	List<DestinyTalentNodeCategory> nodeCategories;
	int hash;
	int index;
	bool redacted;
	DestinyTalentGridDefinition(
		int this.maxGridLevel,
		int this.gridLevelPerColumn,
		int this.progressionHash,
		List<DestinyTalentNodeDefinition> this.nodes,
		List<DestinyTalentNodeExclusiveSetDefinition> this.exclusiveSets,
		List<int> this.independentNodeIndexes,
		Map<DestinyTalentExclusiveGroup, dynamic> this.groups,
		List<DestinyTalentNodeCategory> this.nodeCategories,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyTalentGridDefinition fromJson(Map<String, dynamic> data){
		return new DestinyTalentGridDefinition(
				data['maxGridLevel'],
				data['gridLevelPerColumn'],
				data['progressionHash'],
				DestinyTalentNodeDefinition.fromList(data['nodes']),
				DestinyTalentNodeExclusiveSetDefinition.fromList(data['exclusiveSets']),
				data['independentNodeIndexes'],
				data['groups'],
				DestinyTalentNodeCategory.fromList(data['nodeCategories']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyTalentGridDefinition> fromList(List<dynamic> data){
		List<DestinyTalentGridDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentGridDefinition.fromJson(item));
    });
    return list;
	}
}