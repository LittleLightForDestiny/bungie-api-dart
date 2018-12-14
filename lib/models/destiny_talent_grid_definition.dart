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
	Map<String, DestinyTalentExclusiveGroup> groups;
	List<DestinyTalentNodeCategory> nodeCategories;
	int hash;
	int index;
	bool redacted;
	DestinyTalentGridDefinition(
		this.maxGridLevel,
		this.gridLevelPerColumn,
		this.progressionHash,
		this.nodes,
		this.exclusiveSets,
		this.independentNodeIndexes,
		this.groups,
		this.nodeCategories,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyTalentGridDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentGridDefinition(
				data['maxGridLevel'],
				data['gridLevelPerColumn'],
				data['progressionHash'],
				data['nodes'] != null ? DestinyTalentNodeDefinition.fromList(data['nodes']) : null,
				data['exclusiveSets'] != null ? DestinyTalentNodeExclusiveSetDefinition.fromList(data['exclusiveSets']) : null,
				data['independentNodeIndexes'] != null ? data['independentNodeIndexes']?.cast<int>() ?? null : null,
				data['groups'] != null ? Map<String, DestinyTalentExclusiveGroup>.from(data['groups'].map((k, v)=>MapEntry(k, DestinyTalentExclusiveGroup.fromMap(v)))) : null,
				data['nodeCategories'] != null ? DestinyTalentNodeCategory.fromList(data['nodeCategories']) : null,
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
			data['maxGridLevel'] = this.maxGridLevel;
			data['gridLevelPerColumn'] = this.gridLevelPerColumn;
			data['progressionHash'] = this.progressionHash;
			data['nodes'] = this.nodes.map((item)=>item.toMap()).toList();
			data['exclusiveSets'] = this.exclusiveSets.map((item)=>item.toMap()).toList();
			data['independentNodeIndexes'] = this.independentNodeIndexes;
			data['groups'] = this.groups;
			data['nodeCategories'] = this.nodeCategories.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}