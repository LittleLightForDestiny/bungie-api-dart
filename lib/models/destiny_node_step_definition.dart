import 'destiny_display_properties_definition.dart';
import 'destiny_node_activation_requirement.dart';
import 'destiny_talent_node_step_groups.dart';
import 'destiny_node_socket_replace_response.dart';
class DestinyNodeStepDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int stepIndex;
	int nodeStepHash;
	String interactionDescription;
	int damageType;
	int damageTypeHash;
	DestinyNodeActivationRequirement activationRequirement;
	bool canActivateNextStep;
	int nextStepIndex;
	bool isNextStepRandom;
	List<int> perkHashes;
	int startProgressionBarAtProgress;
	List<int> statHashes;
	bool affectsQuality;
	DestinyTalentNodeStepGroups stepGroups;
	bool affectsLevel;
	List<DestinyNodeSocketReplaceResponse> socketReplacements;
	DestinyNodeStepDefinition(
		this.displayProperties,
		this.stepIndex,
		this.nodeStepHash,
		this.interactionDescription,
		this.damageType,
		this.damageTypeHash,
		this.activationRequirement,
		this.canActivateNextStep,
		this.nextStepIndex,
		this.isNextStepRandom,
		this.perkHashes,
		this.startProgressionBarAtProgress,
		this.statHashes,
		this.affectsQuality,
		this.stepGroups,
		this.affectsLevel,
		this.socketReplacements,
	);

	static DestinyNodeStepDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeStepDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['stepIndex'],
				data['nodeStepHash'],
				data['interactionDescription'],
				data['damageType'],
				data['damageTypeHash'],
				data['activationRequirement'] != null ? DestinyNodeActivationRequirement.fromMap(data['activationRequirement']) : null,
				data['canActivateNextStep'],
				data['nextStepIndex'],
				data['isNextStepRandom'],
				data['perkHashes'] != null ? data['perkHashes']?.cast<int>() ?? null : null,
				data['startProgressionBarAtProgress'],
				data['statHashes'] != null ? data['statHashes']?.cast<int>() ?? null : null,
				data['affectsQuality'],
				data['stepGroups'] != null ? DestinyTalentNodeStepGroups.fromMap(data['stepGroups']) : null,
				data['affectsLevel'],
				data['socketReplacements'] != null ? DestinyNodeSocketReplaceResponse.fromList(data['socketReplacements']) : null,
		);
	}

	static List<DestinyNodeStepDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeStepDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeStepDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['stepIndex'] = this.stepIndex;
			data['nodeStepHash'] = this.nodeStepHash;
			data['interactionDescription'] = this.interactionDescription;
			data['damageType'] = this.damageType;
			data['damageTypeHash'] = this.damageTypeHash;
			data['activationRequirement'] = this.activationRequirement;
			data['canActivateNextStep'] = this.canActivateNextStep;
			data['nextStepIndex'] = this.nextStepIndex;
			data['isNextStepRandom'] = this.isNextStepRandom;
			data['perkHashes'] = this.perkHashes;
			data['startProgressionBarAtProgress'] = this.startProgressionBarAtProgress;
			data['statHashes'] = this.statHashes;
			data['affectsQuality'] = this.affectsQuality;
			data['stepGroups'] = this.stepGroups;
			data['affectsLevel'] = this.affectsLevel;
			data['socketReplacements'] = this.socketReplacements.map((item)=>item.toMap()).toList();
		return data;
	}
}