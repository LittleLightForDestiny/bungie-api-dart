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
		int this.nodeIndex,
		int this.nodeHash,
		int this.row,
		int this.column,
		List<int> this.prerequisiteNodeIndexes,
		int this.binaryPairNodeIndex,
		bool this.autoUnlocks,
		bool this.lastStepRepeats,
		bool this.isRandom,
		DestinyNodeActivationRequirement this.randomActivationRequirement,
		bool this.isRandomRepurchasable,
		List<DestinyNodeStepDefinition> this.steps,
		List<int> this.exclusiveWithNodeHashes,
		int this.randomStartProgressionBarAtProgression,
		String this.layoutIdentifier,
		int this.groupHash,
		int this.loreHash,
		String this.nodeStyleIdentifier,
		bool this.ignoreForCompletion,
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
				data['prerequisiteNodeIndexes'],
				data['binaryPairNodeIndex'],
				data['autoUnlocks'],
				data['lastStepRepeats'],
				data['isRandom'],
				data['randomActivationRequirement'],
				data['isRandomRepurchasable'],
				DestinyNodeStepDefinition.fromList(data['steps']),
				data['exclusiveWithNodeHashes'],
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
			data['nodeIndex'] = nodeIndex;
			data['nodeHash'] = nodeHash;
			data['row'] = row;
			data['column'] = column;
			data['prerequisiteNodeIndexes'] = prerequisiteNodeIndexes;
			data['binaryPairNodeIndex'] = binaryPairNodeIndex;
			data['autoUnlocks'] = autoUnlocks;
			data['lastStepRepeats'] = lastStepRepeats;
			data['isRandom'] = isRandom;
			data['randomActivationRequirement'] = randomActivationRequirement;
			data['isRandomRepurchasable'] = isRandomRepurchasable;
			data['steps'] = steps.map((item)=>item.toMap());
			data['exclusiveWithNodeHashes'] = exclusiveWithNodeHashes;
			data['randomStartProgressionBarAtProgression'] = randomStartProgressionBarAtProgression;
			data['layoutIdentifier'] = layoutIdentifier;
			data['groupHash'] = groupHash;
			data['loreHash'] = loreHash;
			data['nodeStyleIdentifier'] = nodeStyleIdentifier;
			data['ignoreForCompletion'] = ignoreForCompletion;
	}
}