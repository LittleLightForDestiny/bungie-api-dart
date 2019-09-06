import '../models/destiny_milestone_content.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_content_response.g.dart';

/// Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint.
@JsonSerializable()
class DestinyMilestoneContentResponse {
	
	/// Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint.
	@JsonKey(name:'Response')
	DestinyMilestoneContent response;
	
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	DestinyMilestoneContentResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyMilestoneContentResponse.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneContentResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyMilestoneContentResponseToJson(this);
}
