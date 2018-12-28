import 'destiny_item_quantity.dart';

/** Activities can refer to one or more sets of tooltip-friendly reward data. These are the definitions for those tooltip friendly rewards. */
class DestinyActivityRewardDefinition{
	
	/** The header for the reward set, if any. */
	String rewardText;
	
	/** The "Items provided" in the reward. This is almost always a pointer to a DestinyInventoryItemDefintion for an item that you can't actually earn in-game, but that has name/description/icon information for the vague concept of the rewards you will receive. This is because the actual reward generation is non-deterministic and extremely complicated, so the best the game can do is tell you what you'll get in vague terms. And so too shall we.
Interesting trivia: you actually *do* earn these items when you complete the activity. They go into a single-slot bucket on your profile, which is how you see the pop-ups of these rewards when you complete an activity that match these "dummy" items. You can even see them if you look at the last one you earned in your profile-level inventory through the BNet API! Who said reading documentation is a waste of time? */
	List<DestinyItemQuantity> rewardItems;
	DestinyActivityRewardDefinition(
		this.rewardText,
		this.rewardItems,
	);

	static DestinyActivityRewardDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityRewardDefinition(
				data['rewardText'],
				data['rewardItems'] != null ? DestinyItemQuantity.fromList(data['rewardItems']) : null,
		);
	}

	static List<DestinyActivityRewardDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityRewardDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityRewardDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardText'] = this.rewardText;
			data['rewardItems'] = this.rewardItems.map((item)=>item.toMap()).toList();
		return data;
	}
}