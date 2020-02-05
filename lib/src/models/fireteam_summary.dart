import 'package:json_annotation/json_annotation.dart';

import '../enums/fireteam_platform.dart';
import '../enums/fireteam_activity_type.dart';

part 'fireteam_summary.g.dart';

@JsonSerializable()
class FireteamSummary{
	
	FireteamSummary();

	factory FireteamSummary.fromJson(Map<String, dynamic> json) => _$FireteamSummaryFromJson(json);

	@JsonKey(name:'fireteamId')
	String fireteamId;
	@JsonKey(name:'groupId')
	String groupId;
	@JsonKey(name:'platform',unknownEnumValue:FireteamPlatform.Unknown)
	FireteamPlatform platform;
	@JsonKey(name:'activityType',unknownEnumValue:FireteamActivityType.All)
	FireteamActivityType activityType;
	@JsonKey(name:'isImmediate')
	bool isImmediate;
	@JsonKey(name:'scheduledTime')
	String scheduledTime;
	@JsonKey(name:'ownerMembershipId')
	String ownerMembershipId;
	@JsonKey(name:'playerSlotCount')
	int playerSlotCount;
	@JsonKey(name:'alternateSlotCount')
	int alternateSlotCount;
	@JsonKey(name:'availablePlayerSlotCount')
	int availablePlayerSlotCount;
	@JsonKey(name:'availableAlternateSlotCount')
	int availableAlternateSlotCount;
	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'dateCreated')
	String dateCreated;
	@JsonKey(name:'dateModified')
	String dateModified;
	@JsonKey(name:'isPublic')
	bool isPublic;
	@JsonKey(name:'locale')
	String locale;
	@JsonKey(name:'isValid')
	bool isValid;
	@JsonKey(name:'datePlayerModified')
	String datePlayerModified;

	
	
	Map<String, dynamic> toJson() => _$FireteamSummaryToJson(this);
}