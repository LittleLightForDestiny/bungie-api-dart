// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversationAddRequest
    _$GroupOptionalConversationAddRequestFromJson(Map<String, dynamic> json) {
  return GroupOptionalConversationAddRequest()
    ..chatName = json['chatName'] as String?
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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ChatSecuritySettingEnumMap = {
  ChatSecuritySetting.Group: 0,
  ChatSecuritySetting.Admins: 1,
  ChatSecuritySetting.ProtectedInvalidEnumValue: 999999999,
};
