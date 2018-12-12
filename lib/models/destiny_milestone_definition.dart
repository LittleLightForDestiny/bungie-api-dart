import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_quest_definition.dart';
import 'destiny_milestone_reward_category_definition.dart';
import 'destiny_milestone_vendor_definition.dart';
import 'destiny_milestone_value_definition.dart';
import 'destiny_milestone_challenge_activity_definition.dart';
class DestinyMilestoneDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String image;
	int milestoneType;
	bool recruitable;
	String friendlyName;
	bool showInExplorer;
	bool showInMilestones;
	bool explorePrioritizesActivityImage;
	bool hasPredictableDates;
	Map<DestinyMilestoneQuestDefinition, dynamic> quests;
	Map<DestinyMilestoneRewardCategoryDefinition, dynamic> rewards;
	String vendorsDisplayTitle;
	List<DestinyMilestoneVendorDefinition> vendors;
	Map<DestinyMilestoneValueDefinition, dynamic> values;
	bool isInGameMilestone;
	List<DestinyMilestoneChallengeActivityDefinition> activities;
	int defaultOrder;
	int hash;
	int index;
	bool redacted;
	DestinyMilestoneDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.image,
		int this.milestoneType,
		bool this.recruitable,
		String this.friendlyName,
		bool this.showInExplorer,
		bool this.showInMilestones,
		bool this.explorePrioritizesActivityImage,
		bool this.hasPredictableDates,
		Map<DestinyMilestoneQuestDefinition, dynamic> this.quests,
		Map<DestinyMilestoneRewardCategoryDefinition, dynamic> this.rewards,
		String this.vendorsDisplayTitle,
		List<DestinyMilestoneVendorDefinition> this.vendors,
		Map<DestinyMilestoneValueDefinition, dynamic> this.values,
		bool this.isInGameMilestone,
		List<DestinyMilestoneChallengeActivityDefinition> this.activities,
		int this.defaultOrder,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyMilestoneDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['image'],
				data['milestoneType'],
				data['recruitable'],
				data['friendlyName'],
				data['showInExplorer'],
				data['showInMilestones'],
				data['explorePrioritizesActivityImage'],
				data['hasPredictableDates'],
				data['quests'],
				data['rewards'],
				data['vendorsDisplayTitle'],
				DestinyMilestoneVendorDefinition.fromList(data['vendors']),
				data['values'],
				data['isInGameMilestone'],
				DestinyMilestoneChallengeActivityDefinition.fromList(data['activities']),
				data['defaultOrder'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyMilestoneDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['image'] = this.image;
			data['milestoneType'] = this.milestoneType;
			data['recruitable'] = this.recruitable;
			data['friendlyName'] = this.friendlyName;
			data['showInExplorer'] = this.showInExplorer;
			data['showInMilestones'] = this.showInMilestones;
			data['explorePrioritizesActivityImage'] = this.explorePrioritizesActivityImage;
			data['hasPredictableDates'] = this.hasPredictableDates;
			data['quests'] = this.quests;
			data['rewards'] = this.rewards;
			data['vendorsDisplayTitle'] = this.vendorsDisplayTitle;
			data['vendors'] = this.vendors.map((item)=>item.toMap()).toList();
			data['values'] = this.values;
			data['isInGameMilestone'] = this.isInGameMilestone;
			data['activities'] = this.activities.map((item)=>item.toMap()).toList();
			data['defaultOrder'] = this.defaultOrder;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}