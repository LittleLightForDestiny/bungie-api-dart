
import 'package:json_annotation/json_annotation.dart';
part 'fireteam_summary.g.dart';

@JsonSerializable()
class FireteamSummary {

	@JsonKey(name:'fireteamId')
	String fireteamId;

	@JsonKey(name:'groupId')
	String groupId;

	@JsonKey(name:'platform')
	int platform;

	@JsonKey(name:'activityType')
	int activityType;

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
	FireteamSummary();

	factory FireteamSummary.fromJson(Map<String, dynamic> json) => _$FireteamSummaryFromJson(json);
	
	Map<String, dynamic> toJson() => _$FireteamSummaryToJson(this);
}
