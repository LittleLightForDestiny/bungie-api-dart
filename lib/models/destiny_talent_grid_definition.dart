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

	static DestinyTalentGridDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyTalentGridDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentGridDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['maxGridLevel'] = maxGridLevel;
			data['gridLevelPerColumn'] = gridLevelPerColumn;
			data['progressionHash'] = progressionHash;
			data['nodes'] = nodes.map((item)=>item.toMap());
			data['exclusiveSets'] = exclusiveSets.map((item)=>item.toMap());
			data['independentNodeIndexes'] = independentNodeIndexes;
			data['groups'] = groups;
			data['nodeCategories'] = nodeCategories.map((item)=>item.toMap());
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}