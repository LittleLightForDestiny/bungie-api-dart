import 'destiny_item_action_required_item_definition.dart';
import 'destiny_progression_reward_definition.dart';

/* If an item can have an action performed on it (like "Dismantle"), it will be defined here if you care. */
class DestinyItemActionBlockDefinition{
	
	/* Localized text for the verb of the action being performed. */
	String verbName;
	
	/* Localized text describing the action being performed. */
	String verbDescription;
	
	/* The content has this property, however it's not entirely clear how it is used. */
	bool isPositive;
	
	/* If the action has an overlay screen associated with it, this is the name of that screen. Unfortunately, we cannot return the screen's data itself. */
	String overlayScreenName;
	
	/* The icon associated with the overlay screen for the action, if any. */
	String overlayIcon;
	
	/* The number of seconds to delay before allowing this action to be performed again. */
	int requiredCooldownSeconds;
	
	/* If the action requires other items to exist or be destroyed, this is the list of those items and requirements. */
	List<DestinyItemActionRequiredItemDefinition> requiredItems;
	
	/* If performing this action earns you Progression, this is the list of progressions and values granted for those progressions by performing this action. */
	List<DestinyProgressionRewardDefinition> progressionRewards;
	
	/* The internal identifier for the action. */
	String actionTypeLabel;
	
	/* Theoretically, an item could have a localized string for a hint about the location in which the action should be performed. In practice, no items yet have this property. */
	String requiredLocation;
	
	/* The identifier hash for the Cooldown associated with this action. We have not pulled this data yet for you to have more data to use for cooldowns. */
	int requiredCooldownHash;
	
	/* If true, the item is deleted when the action completes. */
	bool deleteOnAction;
	
	/* If true, the entire stack is deleted when the action completes. */
	bool consumeEntireStack;
	
	/* If true, this action will be performed as soon as you earn this item. Some rewards work this way, providing you a single item to pick up from a reward-granting vendor in-game and then immediately consuming itself to provide you multiple items. */
	bool useOnAcquire;
	DestinyItemActionBlockDefinition(
		this.verbName,
		this.verbDescription,
		this.isPositive,
		this.overlayScreenName,
		this.overlayIcon,
		this.requiredCooldownSeconds,
		this.requiredItems,
		this.progressionRewards,
		this.actionTypeLabel,
		this.requiredLocation,
		this.requiredCooldownHash,
		this.deleteOnAction,
		this.consumeEntireStack,
		this.useOnAcquire,
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
				data['requiredItems'] != null ? DestinyItemActionRequiredItemDefinition.fromList(data['requiredItems']) : null,
				data['progressionRewards'] != null ? DestinyProgressionRewardDefinition.fromList(data['progressionRewards']) : null,
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
			data['requiredItems'] = this.requiredItems.map((item)=>item.toMap()).toList();
			data['progressionRewards'] = this.progressionRewards.map((item)=>item.toMap()).toList();
			data['actionTypeLabel'] = this.actionTypeLabel;
			data['requiredLocation'] = this.requiredLocation;
			data['requiredCooldownHash'] = this.requiredCooldownHash;
			data['deleteOnAction'] = this.deleteOnAction;
			data['consumeEntireStack'] = this.consumeEntireStack;
			data['useOnAcquire'] = this.useOnAcquire;
		return data;
	}
}