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
	Map<String, DestinyMilestoneQuestDefinition> quests;
	Map<String, DestinyMilestoneRewardCategoryDefinition> rewards;
	String vendorsDisplayTitle;
	List<DestinyMilestoneVendorDefinition> vendors;
	Map<String, DestinyMilestoneValueDefinition> values;
	bool isInGameMilestone;
	List<DestinyMilestoneChallengeActivityDefinition> activities;
	int defaultOrder;
	int hash;
	int index;
	bool redacted;
	DestinyMilestoneDefinition(
		this.displayProperties,
		this.image,
		this.milestoneType,
		this.recruitable,
		this.friendlyName,
		this.showInExplorer,
		this.showInMilestones,
		this.explorePrioritizesActivityImage,
		this.hasPredictableDates,
		this.quests,
		this.rewards,
		this.vendorsDisplayTitle,
		this.vendors,
		this.values,
		this.isInGameMilestone,
		this.activities,
		this.defaultOrder,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyMilestoneDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['image'],
				data['milestoneType'],
				data['recruitable'],
				data['friendlyName'],
				data['showInExplorer'],
				data['showInMilestones'],
				data['explorePrioritizesActivityImage'],
				data['hasPredictableDates'],
				data['quests'] != null ? Map<String, DestinyMilestoneQuestDefinition>.from(data['quests'].map((k, v)=>MapEntry(k, DestinyMilestoneQuestDefinition.fromMap(v)))) : null,
				data['rewards'] != null ? Map<String, DestinyMilestoneRewardCategoryDefinition>.from(data['rewards'].map((k, v)=>MapEntry(k, DestinyMilestoneRewardCategoryDefinition.fromMap(v)))) : null,
				data['vendorsDisplayTitle'],
				data['vendors'] != null ? DestinyMilestoneVendorDefinition.fromList(data['vendors']) : null,
				data['values'] != null ? Map<String, DestinyMilestoneValueDefinition>.from(data['values'].map((k, v)=>MapEntry(k, DestinyMilestoneValueDefinition.fromMap(v)))) : null,
				data['isInGameMilestone'],
				data['activities'] != null ? DestinyMilestoneChallengeActivityDefinition.fromList(data['activities']) : null,
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