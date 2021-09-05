import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_game_privacy_setting.dart';
import '../enums/destiny_join_closed_reasons.dart';

part 'destiny_profile_transitory_joinability.g.dart';

/// Some basic information about whether you can be joined, how many slots are left etc. Note that this can change quickly, so it may not actually be useful. But perhaps it will be in some use cases?
@JsonSerializable()
class DestinyProfileTransitoryJoinability{
	
	DestinyProfileTransitoryJoinability();

	factory DestinyProfileTransitoryJoinability.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileTransitoryJoinabilityFromJson(json);
	}

	/// The number of slots still available on this person's fireteam.
	@JsonKey(name:'openSlots')
	int? openSlots;
	/// Who the person is currently allowing invites from.
	@JsonKey(name:'privacySetting',unknownEnumValue:DestinyGamePrivacySetting.ProtectedInvalidEnumValue)
	DestinyGamePrivacySetting? privacySetting;
	/// Reasons why a person can't join this person's fireteam.
	@JsonKey(name:'closedReasons')
	DestinyJoinClosedReasons? closedReasons;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryJoinabilityToJson(this);
}