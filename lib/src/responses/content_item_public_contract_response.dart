import '../models/content_item_public_contract.dart';

import 'package:json_annotation/json_annotation.dart';
part 'content_item_public_contract_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ContentItemPublicContractResponse {
	
	@JsonKey(name:'Response')
	ContentItemPublicContract response;
	
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
	ContentItemPublicContractResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ContentItemPublicContractResponse.fromJson(Map<String, dynamic> json) => _$ContentItemPublicContractResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ContentItemPublicContractResponseToJson(this);
}
