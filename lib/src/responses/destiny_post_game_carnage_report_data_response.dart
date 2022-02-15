import '../models/destiny_post_game_carnage_report_data.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_post_game_carnage_report_data_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyPostGameCarnageReportDataResponse extends BungieNetResponse<DestinyPostGameCarnageReportData> {
	DestinyPostGameCarnageReportDataResponse({
		DestinyPostGameCarnageReportData? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory DestinyPostGameCarnageReportDataResponse.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportDataResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportDataResponseToJson(this);
}