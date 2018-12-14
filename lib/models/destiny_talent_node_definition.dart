import 'destiny_node_activation_requirement.dart';
import 'destiny_node_step_definition.dart';
class DestinyTalentNodeDefinition{
	int nodeIndex;
	int nodeHash;
	int row;
	int column;
	List<int> prerequisiteNodeIndexes;
	int binaryPairNodeIndex;
	bool autoUnlocks;
	bool lastStepRepeats;
	bool isRandom;
	DestinyNodeActivationRequirement randomActivationRequirement;
	bool isRandomRepurchasable;
	List<DestinyNodeStepDefinition> steps;
	List<int> exclusiveWithNodeHashes;
	int randomStartProgressionBarAtProgression;
	String layoutIdentifier;
	int groupHash;
	int loreHash;
	String nodeStyleIdentifier;
	bool ignoreForCompletion;
	DestinyTalentNodeDefinition(
		this.nodeIndex,
		this.nodeHash,
		this.row,
		this.column,
		this.prerequisiteNodeIndexes,
		this.binaryPairNodeIndex,
		this.autoUnlocks,
		this.lastStepRepeats,
		this.isRandom,
		this.randomActivationRequirement,
		this.isRandomRepurchasable,
		this.steps,
		this.exclusiveWithNodeHashes,
		this.randomStartProgressionBarAtProgression,
		this.layoutIdentifier,
		this.groupHash,
		this.loreHash,
		this.nodeStyleIdentifier,
		this.ignoreForCompletion,
	);

	static DestinyTalentNodeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeDefinition(
				data['nodeIndex'],
				data['nodeHash'],
				data['row'],
				data['column'],
				data['prerequisiteNodeIndexes'] != null ? data['prerequisiteNodeIndexes']?.cast<int>() ?? null : null,
				data['binaryPairNodeIndex'],
				data['autoUnlocks'],
				data['lastStepRepeats'],
				data['isRandom'],
				data['randomActivationRequirement'] != null ? DestinyNodeActivationRequirement.fromMap(data['randomActivationRequirement']) : null,
				data['isRandomRepurchasable'],
				data['steps'] != null ? DestinyNodeStepDefinition.fromList(data['steps']) : null,
				data['exclusiveWithNodeHashes'] != null ? data['exclusiveWithNodeHashes']?.cast<int>() ?? null : null,
				data['randomStartProgressionBarAtProgression'],
				data['layoutIdentifier'],
				data['groupHash'],
				data['loreHash'],
				data['nodeStyleIdentifier'],
				data['ignoreForCompletion'],
		);
	}

	static List<DestinyTalentNodeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeIndex'] = this.nodeIndex;
			data['nodeHash'] = this.nodeHash;
			data['row'] = this.row;
			data['column'] = this.column;
			data['prerequisiteNodeIndexes'] = this.prerequisiteNodeIndexes;
			data['binaryPairNodeIndex'] = this.binaryPairNodeIndex;
			data['autoUnlocks'] = this.autoUnlocks;
			data['lastStepRepeats'] = this.lastStepRepeats;
			data['isRandom'] = this.isRandom;
			data['randomActivationRequirement'] = this.randomActivationRequirement;
			data['isRandomRepurchasable'] = this.isRandomRepurchasable;
			data['steps'] = this.steps.map((item)=>item.toMap()).toList();
			data['exclusiveWithNodeHashes'] = this.exclusiveWithNodeHashes;
			data['randomStartProgressionBarAtProgression'] = this.randomStartProgressionBarAtProgression;
			data['layoutIdentifier'] = this.layoutIdentifier;
			data['groupHash'] = this.groupHash;
			data['loreHash'] = this.loreHash;
			data['nodeStyleIdentifier'] = this.nodeStyleIdentifier;
			data['ignoreForCompletion'] = this.ignoreForCompletion;
		return data;
	}
}