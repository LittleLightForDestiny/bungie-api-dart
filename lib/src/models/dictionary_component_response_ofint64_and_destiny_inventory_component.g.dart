// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_inventory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyInventoryComponent
    _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint64AndDestinyInventoryComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                DestinyInventoryComponent.fromJson(e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyInventoryComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
