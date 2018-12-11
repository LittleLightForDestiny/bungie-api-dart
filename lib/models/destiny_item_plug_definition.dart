import 'destiny_plug_rule_definition.dart';
import 'destiny_plug_rule_definition.dart';
import 'destiny_parent_item_override.dart';
class DestinyItemPlugDefinition{
	List<DestinyPlugRuleDefinition> insertionRules;
	String plugCategoryIdentifier;
	int plugCategoryHash;
	bool onActionRecreateSelf;
	int insertionMaterialRequirementHash;
	int previewItemOverrideHash;
	int enabledMaterialRequirementHash;
	List<DestinyPlugRuleDefinition> enabledRules;
	String uiPlugLabel;
	int plugStyle;
	bool isPseudoPlug;
	int plugAvailability;
	String alternateUiPlugLabel;
	int alternatePlugStyle;
	bool isDummyPlug;
	DestinyParentItemOverride parentItemOverride;
	DestinyItemPlugDefinition(
		List<DestinyPlugRuleDefinition> this.insertionRules,
		String this.plugCategoryIdentifier,
		int this.plugCategoryHash,
		bool this.onActionRecreateSelf,
		int this.insertionMaterialRequirementHash,
		int this.previewItemOverrideHash,
		int this.enabledMaterialRequirementHash,
		List<DestinyPlugRuleDefinition> this.enabledRules,
		String this.uiPlugLabel,
		int this.plugStyle,
		bool this.isPseudoPlug,
		int this.plugAvailability,
		String this.alternateUiPlugLabel,
		int this.alternatePlugStyle,
		bool this.isDummyPlug,
		DestinyParentItemOverride this.parentItemOverride,
	);

	static DestinyItemPlugDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlugDefinition(
				DestinyPlugRuleDefinition.fromList(data['insertionRules']),
				data['plugCategoryIdentifier'],
				data['plugCategoryHash'],
				data['onActionRecreateSelf'],
				data['insertionMaterialRequirementHash'],
				data['previewItemOverrideHash'],
				data['enabledMaterialRequirementHash'],
				DestinyPlugRuleDefinition.fromList(data['enabledRules']),
				data['uiPlugLabel'],
				data['plugStyle'],
				data['isPseudoPlug'],
				data['plugAvailability'],
				data['alternateUiPlugLabel'],
				data['alternatePlugStyle'],
				data['isDummyPlug'],
				data['parentItemOverride'],
		);
	}

	static List<DestinyItemPlugDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPlugDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlugDefinition.fromJson(item));
    });
    return list;
	}
}