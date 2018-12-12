import 'destiny_item_action_required_item_definition.dart';
import 'destiny_progression_reward_definition.dart';
class DestinyItemActionBlockDefinition{
	String verbName;
	String verbDescription;
	bool isPositive;
	String overlayScreenName;
	String overlayIcon;
	int requiredCooldownSeconds;
	List<DestinyItemActionRequiredItemDefinition> requiredItems;
	List<DestinyProgressionRewardDefinition> progressionRewards;
	String actionTypeLabel;
	String requiredLocation;
	int requiredCooldownHash;
	bool deleteOnAction;
	bool consumeEntireStack;
	bool useOnAcquire;
	DestinyItemActionBlockDefinition(
		String this.verbName,
		String this.verbDescription,
		bool this.isPositive,
		String this.overlayScreenName,
		String this.overlayIcon,
		int this.requiredCooldownSeconds,
		List<DestinyItemActionRequiredItemDefinition> this.requiredItems,
		List<DestinyProgressionRewardDefinition> this.progressionRewards,
		String this.actionTypeLabel,
		String this.requiredLocation,
		int this.requiredCooldownHash,
		bool this.deleteOnAction,
		bool this.consumeEntireStack,
		bool this.useOnAcquire,
	);

	static DestinyItemActionBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemActionBlockDefinition(
				data['verbName'],
				data['verbDescription'],
				data['isPositive'],
				data['overlayScreenName'],
				data['overlayIcon'],
				data['requiredCooldownSeconds'],
				DestinyItemActionRequiredItemDefinition.fromList(data['requiredItems']),
				DestinyProgressionRewardDefinition.fromList(data['progressionRewards']),
				data['actionTypeLabel'],
				data['requiredLocation'],
				data['requiredCooldownHash'],
				data['deleteOnAction'],
				data['consumeEntireStack'],
				data['useOnAcquire'],
		);
	}

	static List<DestinyItemActionBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemActionBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemActionBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['verbName'] = this.verbName;
			data['verbDescription'] = this.verbDescription;
			data['isPositive'] = this.isPositive;
			data['overlayScreenName'] = this.overlayScreenName;
			data['overlayIcon'] = this.overlayIcon;
			data['requiredCooldownSeconds'] = this.requiredCooldownSeconds;
			data['requiredItems'] = this.requiredItems.map((item)=>item.toMap());
			data['progressionRewards'] = this.progressionRewards.map((item)=>item.toMap());
			data['actionTypeLabel'] = this.actionTypeLabel;
			data['requiredLocation'] = this.requiredLocation;
			data['requiredCooldownHash'] = this.requiredCooldownHash;
			data['deleteOnAction'] = this.deleteOnAction;
			data['consumeEntireStack'] = this.consumeEntireStack;
			data['useOnAcquire'] = this.useOnAcquire;
		return data;
	}
}