import 'general_user.dart';

import 'package:json_annotation/json_annotation.dart';
part 'forum_recruitment_detail.g.dart';

@JsonSerializable()
class ForumRecruitmentDetail {

	@JsonKey(name:'topicId')
	String topicId;

	@JsonKey(name:'microphoneRequired')
	bool microphoneRequired;

	@JsonKey(name:'intensity')
	int intensity;

	@JsonKey(name:'tone')
	int tone;

	@JsonKey(name:'approved')
	bool approved;

	@JsonKey(name:'conversationId')
	String conversationId;

	@JsonKey(name:'playerSlotsTotal')
	int playerSlotsTotal;

	@JsonKey(name:'playerSlotsRemaining')
	int playerSlotsRemaining;

	@JsonKey(name:'Fireteam')
	List<GeneralUser> fireteam;

	@JsonKey(name:'kickedPlayerIds')
	List<String> kickedPlayerIds;
	ForumRecruitmentDetail();

	factory ForumRecruitmentDetail.fromJson(Map<String, dynamic> json) => _$ForumRecruitmentDetailFromJson(json);
	
	Map<String, dynamic> toJson() => _$ForumRecruitmentDetailToJson(this);
}
