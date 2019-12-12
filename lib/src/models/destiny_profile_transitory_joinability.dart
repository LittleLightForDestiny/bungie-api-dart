import 'package:json_annotation/json_annotation.dart';


part 'destiny_profile_transitory_joinability.g.dart';

/// Some basic information about whether you can be joined, how many slots are left etc. Note that this can change quickly, so it may not actually be useful. But perhaps it will be in some use cases?
@JsonSerializable()
class DestinyProfileTransitoryJoinability{
	
	DestinyProfileTransitoryJoinability();

	factory DestinyProfileTransitoryJoinability.fromJson(Map<String, dynamic> json) => _$DestinyProfileTransitoryJoinabilityFromJson(json);

	/// The number of slots still available on this person&#39;s fireteam.
	@JsonKey(name:'openSlots')
	int openSlots;
	/// Who the person is currently allowing invites from.
	@JsonKey(name:'privacySetting')
	int privacySetting;
	/// Reasons why a person can&#39;t join this person&#39;s fireteam.
	@JsonKey(name:'closedReasons')
	int closedReasons;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryJoinabilityToJson(this);
}