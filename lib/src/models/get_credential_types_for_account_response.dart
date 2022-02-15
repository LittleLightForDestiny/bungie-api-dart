import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_credential_type.dart';

part 'get_credential_types_for_account_response.g.dart';

@JsonSerializable()
class GetCredentialTypesForAccountResponse{	
	GetCredentialTypesForAccountResponse();

	factory GetCredentialTypesForAccountResponse.fromJson(Map<String, dynamic> json) {
		return _$GetCredentialTypesForAccountResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GetCredentialTypesForAccountResponseToJson(this);
	
	@JsonKey(name:'credentialType',fromJson:decodeBungieCredentialType,toJson:encodeBungieCredentialType)
	BungieCredentialType? credentialType;
	
	@JsonKey(name:'credentialDisplayName')
	String? credentialDisplayName;
	
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	@JsonKey(name:'credentialAsString')
	String? credentialAsString;
}