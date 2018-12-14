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
		this.insertionRules,
		this.plugCategoryIdentifier,
		this.plugCategoryHash,
		this.onActionRecreateSelf,
		this.insertionMaterialRequirementHash,
		this.previewItemOverrideHash,
		this.enabledMaterialRequirementHash,
		this.enabledRules,
		this.uiPlugLabel,
		this.plugStyle,
		this.isPseudoPlug,
		this.plugAvailability,
		this.alternateUiPlugLabel,
		this.alternatePlugStyle,
		this.isDummyPlug,
		this.parentItemOverride,
	);

	static DestinyItemPlugDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlugDefinition(
				data['insertionRules'] != null ? DestinyPlugRuleDefinition.fromList(data['insertionRules']) : null,
				data['plugCategoryIdentifier'],
				data['plugCategoryHash'],
				data['onActionRecreateSelf'],
				data['insertionMaterialRequirementHash'],
				data['previewItemOverrideHash'],
				data['enabledMaterialRequirementHash'],
				data['enabledRules'] != null ? DestinyPlugRuleDefinition.fromList(data['enabledRules']) : null,
				data['uiPlugLabel'],
				data['plugStyle'],
				data['isPseudoPlug'],
				data['plugAvailability'],
				data['alternateUiPlugLabel'],
				data['alternatePlugStyle'],
				data['isDummyPlug'],
				data['parentItemOverride'] != null ? DestinyParentItemOverride.fromMap(data['parentItemOverride']) : null,
		);
	}

	static List<DestinyItemPlugDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPlugDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlugDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['insertionRules'] = this.insertionRules.map((item)=>item.toMap()).toList();
			data['plugCategoryIdentifier'] = this.plugCategoryIdentifier;
			data['plugCategoryHash'] = this.plugCategoryHash;
			data['onActionRecreateSelf'] = this.onActionRecreateSelf;
			data['insertionMaterialRequirementHash'] = this.insertionMaterialRequirementHash;
			data['previewItemOverrideHash'] = this.previewItemOverrideHash;
			data['enabledMaterialRequirementHash'] = this.enabledMaterialRequirementHash;
			data['enabledRules'] = this.enabledRules.map((item)=>item.toMap()).toList();
			data['uiPlugLabel'] = this.uiPlugLabel;
			data['plugStyle'] = this.plugStyle;
			data['isPseudoPlug'] = this.isPseudoPlug;
			data['plugAvailability'] = this.plugAvailability;
			data['alternateUiPlugLabel'] = this.alternateUiPlugLabel;
			data['alternatePlugStyle'] = this.alternatePlugStyle;
			data['isDummyPlug'] = this.isDummyPlug;
			data['parentItemOverride'] = this.parentItemOverride;
		return data;
	}
}