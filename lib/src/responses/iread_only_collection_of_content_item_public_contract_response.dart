
import 'package:json_annotation/json_annotation.dart';
part 'iread_only_collection_of_content_item_public_contract_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class IReadOnlyCollectionOfContentItemPublicContractResponse{
	
	@JsonKey(name:'Response')
	Map<String, String> response;
	
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
	IReadOnlyCollectionOfContentItemPublicContractResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory IReadOnlyCollectionOfContentItemPublicContractResponse.fromJson(Map<String, dynamic> json) => _$IReadOnlyCollectionOfContentItemPublicContractResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$IReadOnlyCollectionOfContentItemPublicContractResponseToJson(this);
}