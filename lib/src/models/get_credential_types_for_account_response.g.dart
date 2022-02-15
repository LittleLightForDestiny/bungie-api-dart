// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credential_types_for_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCredentialTypesForAccountResponse
    _$GetCredentialTypesForAccountResponseFromJson(Map<String, dynamic> json) =>
        GetCredentialTypesForAccountResponse()
          ..credentialType = decodeBungieCredentialType(json['credentialType'])
          ..credentialDisplayName = json['credentialDisplayName'] as String?
          ..isPublic = json['isPublic'] as bool?
          ..credentialAsString = json['credentialAsString'] as String?;

Map<String, dynamic> _$GetCredentialTypesForAccountResponseToJson(
        GetCredentialTypesForAccountResponse instance) =>
    <String, dynamic>{
      'credentialType': encodeBungieCredentialType(instance.credentialType),
      'credentialDisplayName': instance.credentialDisplayName,
      'isPublic': instance.isPublic,
      'credentialAsString': instance.credentialAsString,
    };
