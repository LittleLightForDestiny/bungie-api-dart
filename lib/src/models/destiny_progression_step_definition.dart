import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_progression_step_display_effect.dart';
import 'destiny_item_quantity.dart';

part 'destiny_progression_step_definition.g.dart';

/// This defines a single Step in a progression (which roughly equates to a level. See DestinyProgressionDefinition for caveats).
@JsonSerializable()
class DestinyProgressionStepDefinition{
	
	DestinyProgressionStepDefinition();

	factory DestinyProgressionStepDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyProgressionStepDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Very rarely, Progressions will have localized text describing the Level of the progression. This will be that localized text, if it exists. Otherwise, the standard appears to be to simply show the level numerically.
	@JsonKey(name:'stepName')
	String stepName;
	/// This appears to be, when you "level up", whether a visual effect will display and on what entity. See DestinyProgressionStepDisplayEffect for slightly more info.
	@JsonKey(name:'displayEffectType',unknownEnumValue:DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue)
	DestinyProgressionStepDisplayEffect displayEffectType;
	/// The total amount of progression points/"experience" you will need to initially reach this step. If this is the last step and the progression is repeating indefinitely (DestinyProgressionDefinition.repeatLastStep), this will also be the progress needed to level it up further by repeating this step again.
	@JsonKey(name:'progressTotal')
	int progressTotal;
	/// A listing of items rewarded as a result of reaching this level.
	@JsonKey(name:'rewardItems')
	List<DestinyItemQuantity> rewardItems;
	/// If this progression step has a specific icon related to it, this is the icon to show.
	@JsonKey(name:'icon')
	String icon;

	
	
	Map<String, dynamic> toJson() => _$DestinyProgressionStepDefinitionToJson(this);
}