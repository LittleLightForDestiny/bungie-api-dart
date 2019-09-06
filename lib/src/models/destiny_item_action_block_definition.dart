import 'destiny_item_action_required_item_definition.dart';
import 'destiny_progression_reward_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_action_block_definition.g.dart';

/// If an item can have an action performed on it (like &quot;Dismantle&quot;), it will be defined here if you care.
@JsonSerializable()
class DestinyItemActionBlockDefinition {

	/// Localized text for the verb of the action being performed.
	@JsonKey(name:'verbName')
	String verbName;

	/// Localized text describing the action being performed.
	@JsonKey(name:'verbDescription')
	String verbDescription;

	/// The content has this property, however it&#39;s not entirely clear how it is used.
	@JsonKey(name:'isPositive')
	bool isPositive;

	/// If the action has an overlay screen associated with it, this is the name of that screen. Unfortunately, we cannot return the screen&#39;s data itself.
	@JsonKey(name:'overlayScreenName')
	String overlayScreenName;

	/// The icon associated with the overlay screen for the action, if any.
	@JsonKey(name:'overlayIcon')
	String overlayIcon;

	/// The number of seconds to delay before allowing this action to be performed again.
	@JsonKey(name:'requiredCooldownSeconds')
	int requiredCooldownSeconds;

	/// If the action requires other items to exist or be destroyed, this is the list of those items and requirements.
	@JsonKey(name:'requiredItems')
	List<DestinyItemActionRequiredItemDefinition> requiredItems;

	/// If performing this action earns you Progression, this is the list of progressions and values granted for those progressions by performing this action.
	@JsonKey(name:'progressionRewards')
	List<DestinyProgressionRewardDefinition> progressionRewards;

	/// The internal identifier for the action.
	@JsonKey(name:'actionTypeLabel')
	String actionTypeLabel;

	/// Theoretically, an item could have a localized string for a hint about the location in which the action should be performed. In practice, no items yet have this property.
	@JsonKey(name:'requiredLocation')
	String requiredLocation;

	/// The identifier hash for the Cooldown associated with this action. We have not pulled this data yet for you to have more data to use for cooldowns.
	@JsonKey(name:'requiredCooldownHash')
	int requiredCooldownHash;

	/// If true, the item is deleted when the action completes.
	@JsonKey(name:'deleteOnAction')
	bool deleteOnAction;

	/// If true, the entire stack is deleted when the action completes.
	@JsonKey(name:'consumeEntireStack')
	bool consumeEntireStack;

	/// If true, this action will be performed as soon as you earn this item. Some rewards work this way, providing you a single item to pick up from a reward-granting vendor in-game and then immediately consuming itself to provide you multiple items.
	@JsonKey(name:'useOnAcquire')
	bool useOnAcquire;
	DestinyItemActionBlockDefinition();

	factory DestinyItemActionBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemActionBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemActionBlockDefinitionToJson(this);
}
