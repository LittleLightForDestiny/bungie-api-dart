import '../models/destiny_post_game_carnage_report_data.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_post_game_carnage_report_data_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyPostGameCarnageReportDataResponse{
	DestinyPostGameCarnageReportDataResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyPostGameCarnageReportDataResponse.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportDataResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	DestinyPostGameCarnageReportData response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes errorCode;
	
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

	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportDataResponseToJson(this);
}