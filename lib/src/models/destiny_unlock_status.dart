
import 'package:json_annotation/json_annotation.dart';
part 'destiny_unlock_status.g.dart';

/// Indicates the status of an &quot;Unlock Flag&quot; on a Character or Profile.
/// These are individual bits of state that can be either set or not set, and sometimes provide interesting human-readable information in their related DestinyUnlockDefinition.
@JsonSerializable()
class DestinyUnlockStatus {

	/// The hash identifier for the Unlock Flag. Use to lookup DestinyUnlockDefinition for static data. Not all unlocks have human readable data - in fact, most don&#39;t. But when they do, it can be very useful to show. Even if they don&#39;t have human readable data, you might be able to infer the meaning of an unlock flag with a bit of experimentation...
	@JsonKey(name:'unlockHash')
	int unlockHash;

	/// Whether the unlock flag is set.
	@JsonKey(name:'isSet')
	bool isSet;
	DestinyUnlockStatus();

	factory DestinyUnlockStatus.fromJson(Map<String, dynamic> json) => _$DestinyUnlockStatusFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyUnlockStatusToJson(this);
}
