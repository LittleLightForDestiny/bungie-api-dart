import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_credential_type.dart';

part 'get_credential_types_for_account_response.g.dart';

@JsonSerializable()
class GetCredentialTypesForAccountResponse{	
	GetCredentialTypesForAccountResponse();

	
	@JsonKey(name:'credentialType',fromJson:decodeBungieCredentialType,toJson:encodeBungieCredentialType)
	BungieCredentialType? credentialType;
	
	@JsonKey(name:'credentialDisplayName')
	String? credentialDisplayName;
	
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	@JsonKey(name:'credentialAsString')
	String? credentialAsString;

	factory GetCredentialTypesForAccountResponse.fromJson(Map<String, dynamic> json) {
		return _$GetCredentialTypesForAccountResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GetCredentialTypesForAccountResponseToJson(this);

	static Future<GetCredentialTypesForAccountResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GetCredentialTypesForAccountResponse>((json)=>GetCredentialTypesForAccountResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}