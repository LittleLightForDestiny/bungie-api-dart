import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_unlock_status.g.dart';

/// Indicates the status of an &quot;Unlock Flag&quot; on a Character or Profile.
/// These are individual bits of state that can be either set or not set, and sometimes provide interesting human-readable information in their related DestinyUnlockDefinition.
@JsonSerializable()
class DestinyUnlockStatus{	
	DestinyUnlockStatus();

	
	/// The hash identifier for the Unlock Flag. Use to lookup DestinyUnlockDefinition for static data. Not all unlocks have human readable data - in fact, most don't. But when they do, it can be very useful to show. Even if they don't have human readable data, you might be able to infer the meaning of an unlock flag with a bit of experimentation...
	@JsonKey(name:'unlockHash')
	int? unlockHash;
	
	/// Whether the unlock flag is set.
	@JsonKey(name:'isSet')
	bool? isSet;

	factory DestinyUnlockStatus.fromJson(Map<String, dynamic> json) {
		return _$DestinyUnlockStatusFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyUnlockStatusToJson(this);

	static Future<DestinyUnlockStatus> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyUnlockStatus>((json)=>DestinyUnlockStatus.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}