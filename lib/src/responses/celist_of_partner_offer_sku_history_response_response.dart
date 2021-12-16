import '../models/partner_offer_sku_history_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'celist_of_partner_offer_sku_history_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEListOfPartnerOfferSkuHistoryResponseResponse{
	CEListOfPartnerOfferSkuHistoryResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory CEListOfPartnerOfferSkuHistoryResponseResponse.fromJson(Map<String, dynamic> json) => _$CEListOfPartnerOfferSkuHistoryResponseResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<PartnerOfferSkuHistoryResponse>? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$CEListOfPartnerOfferSkuHistoryResponseResponseToJson(this);
}