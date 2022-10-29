import '../models/content_item_public_contract.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'content_item_public_contract_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ContentItemPublicContractResponse extends BungieNetResponse<ContentItemPublicContract> {
	ContentItemPublicContractResponse({
		ContentItemPublicContract? response,
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

	factory ContentItemPublicContractResponse.fromJson(Map<String, dynamic> json) => _$ContentItemPublicContractResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ContentItemPublicContractResponseToJson(this);

	static Future<ContentItemPublicContractResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentItemPublicContractResponse>((json)=>ContentItemPublicContractResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}