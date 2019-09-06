import '../models/search_result_of_content_item_public_contract.dart';

import 'package:json_annotation/json_annotation.dart';
part 'search_result_of_content_item_public_contract_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfContentItemPublicContractResponse {
	
	@JsonKey(name:'Response')
	SearchResultOfContentItemPublicContract response;
	
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
	SearchResultOfContentItemPublicContractResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory SearchResultOfContentItemPublicContractResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfContentItemPublicContractResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$SearchResultOfContentItemPublicContractResponseToJson(this);
}
