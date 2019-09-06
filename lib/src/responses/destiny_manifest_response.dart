import '../models/destiny_manifest.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_manifest_response.g.dart';

/// DestinyManifest is the external-facing contract for just the properties needed by those calling the Destiny Platform.
@JsonSerializable()
class DestinyManifestResponse {
	
	/// DestinyManifest is the external-facing contract for just the properties needed by those calling the Destiny Platform.
	@JsonKey(name:'Response')
	DestinyManifest response;
	
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
	DestinyManifestResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyManifestResponse.fromJson(Map<String, dynamic> json) => _$DestinyManifestResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyManifestResponseToJson(this);
}
