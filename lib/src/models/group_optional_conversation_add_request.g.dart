// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversationAddRequest
    _$GroupOptionalConversationAddRequestFromJson(Map<String, dynamic> json) {
  return GroupOptionalConversationAddRequest()
    ..chatName = json['chatName'] as String
    ..chatSecurity = _$enumDecodeNullable(
        _$ChatSecuritySettingEnumMap, json['chatSecurity'],
        unknownValue: ChatSecuritySetting.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$GroupOptionalConversationAddRequestToJson(
        GroupOptionalConversationAddRequest instance) =>
    <String, dynamic>{
      'chatName': instance.chatName,
      'chatSecurity': _$ChatSecuritySettingEnumMap[instance.chatSecurity],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ChatSecuritySettingEnumMap = {
  ChatSecuritySetting.Group: 0,
  ChatSecuritySetting.Admins: 1,
  ChatSecuritySetting.ProtectedInvalidEnumValue: 999999999,
};
