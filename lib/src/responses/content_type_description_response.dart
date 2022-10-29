import '../models/content_type_description.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'content_type_description_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ContentTypeDescriptionResponse extends BungieNetResponse<ContentTypeDescription> {
	ContentTypeDescriptionResponse({
		ContentTypeDescription? response,
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

	factory ContentTypeDescriptionResponse.fromJson(Map<String, dynamic> json) => _$ContentTypeDescriptionResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ContentTypeDescriptionResponseToJson(this);

	static Future<ContentTypeDescriptionResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentTypeDescriptionResponse>((json)=>ContentTypeDescriptionResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}