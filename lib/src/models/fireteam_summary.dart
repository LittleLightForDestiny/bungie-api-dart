import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/fireteam_platform.dart';

part 'fireteam_summary.g.dart';

@JsonSerializable()
class FireteamSummary{	
	FireteamSummary();

	
	@JsonKey(name:'fireteamId')
	String? fireteamId;
	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'platform',fromJson:decodeFireteamPlatform,toJson:encodeFireteamPlatform)
	FireteamPlatform? platform;
	
	@JsonKey(name:'activityType')
	int? activityType;
	
	@JsonKey(name:'isImmediate')
	bool? isImmediate;
	
	@JsonKey(name:'scheduledTime')
	String? scheduledTime;
	
	@JsonKey(name:'ownerMembershipId')
	String? ownerMembershipId;
	
	@JsonKey(name:'playerSlotCount')
	int? playerSlotCount;
	
	@JsonKey(name:'alternateSlotCount')
	int? alternateSlotCount;
	
	@JsonKey(name:'availablePlayerSlotCount')
	int? availablePlayerSlotCount;
	
	@JsonKey(name:'availableAlternateSlotCount')
	int? availableAlternateSlotCount;
	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'dateCreated')
	String? dateCreated;
	
	@JsonKey(name:'dateModified')
	String? dateModified;
	
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	@JsonKey(name:'locale')
	String? locale;
	
	@JsonKey(name:'isValid')
	bool? isValid;
	
	@JsonKey(name:'datePlayerModified')
	String? datePlayerModified;
	
	@JsonKey(name:'titleBeforeModeration')
	String? titleBeforeModeration;

	factory FireteamSummary.fromJson(Map<String, dynamic> json) {
		return _$FireteamSummaryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$FireteamSummaryToJson(this);

	static Future<FireteamSummary> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, FireteamSummary>((json)=>FireteamSummary.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}