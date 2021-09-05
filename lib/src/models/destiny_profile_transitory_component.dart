import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_transitory_party_member.dart';
import 'destiny_profile_transitory_current_activity.dart';
import 'destiny_profile_transitory_joinability.dart';
import 'destiny_profile_transitory_tracking_entry.dart';

part 'destiny_profile_transitory_component.g.dart';

/// This is an experimental set of data that Bungie considers to be &quot;transitory&quot; - information that may be useful for API users, but that is coming from a non-authoritative data source about information that could potentially change at a more frequent pace than Bungie.net will receive updates about it.
/// This information is provided exclusively for convenience should any of it be useful to users: we provide no guarantees to the accuracy or timeliness of data that comes from this source. Know that this data can potentially be out-of-date or even wrong entirely if the user disconnected from the game or suddenly changed their status before we can receive refreshed data.
@JsonSerializable()
class DestinyProfileTransitoryComponent{
	
	DestinyProfileTransitoryComponent();

	factory DestinyProfileTransitoryComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileTransitoryComponentFromJson(json);
	}

	/// If you have any members currently in your party, this is some (very) bare-bones information about those members.
	@JsonKey(name:'partyMembers')
	List<DestinyProfileTransitoryPartyMember>? partyMembers;
	/// If you are in an activity, this is some transitory info about the activity currently being played.
	@JsonKey(name:'currentActivity')
	DestinyProfileTransitoryCurrentActivity? currentActivity;
	/// Information about whether and what might prevent you from joining this person on a fireteam.
	@JsonKey(name:'joinability')
	DestinyProfileTransitoryJoinability? joinability;
	/// Information about tracked entities.
	@JsonKey(name:'tracking')
	List<DestinyProfileTransitoryTrackingEntry>? tracking;
	/// The hash identifier for the DestinyDestinationDefinition of the last location you were orbiting when in orbit.
	@JsonKey(name:'lastOrbitedDestinationHash')
	int? lastOrbitedDestinationHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryComponentToJson(this);
}