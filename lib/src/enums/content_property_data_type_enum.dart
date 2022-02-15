import 'package:json_annotation/json_annotation.dart';

enum ContentPropertyDataTypeEnum {
  ///None = 0
  @JsonValue(0)
  None,
  ///Plaintext = 1
  @JsonValue(1)
  Plaintext,
  ///Html = 2
  @JsonValue(2)
  Html,
  ///Dropdown = 3
  @JsonValue(3)
  Dropdown,
  ///List = 4
  @JsonValue(4)
  List,
  ///Json = 5
  @JsonValue(5)
  Json,
  ///Content = 6
  @JsonValue(6)
  Content,
  ///Representation = 7
  @JsonValue(7)
  Representation,
  ///Set = 8
  @JsonValue(8)
  Set,
  ///File = 9
  @JsonValue(9)
  File,
  ///FolderSet = 10
  @JsonValue(10)
  FolderSet,
  ///Date = 11
  @JsonValue(11)
  Date,
  ///MultilinePlaintext = 12
  @JsonValue(12)
  MultilinePlaintext,
  ///DestinyContent = 13
  @JsonValue(13)
  DestinyContent,
  ///Color = 14
  @JsonValue(14)
  Color,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ContentPropertyDataTypeEnumExtension on ContentPropertyDataTypeEnum{
  int? get value {
    if (_$ContentPropertyDataTypeEnumEnumMap.containsKey(this)){
      return _$ContentPropertyDataTypeEnumEnumMap[this];
    }
    return null;
  }
}

ContentPropertyDataTypeEnum? decodeContentPropertyDataTypeEnum (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ContentPropertyDataTypeEnumValueMap.containsKey(value)){
    return _$ContentPropertyDataTypeEnumValueMap[value];
  }

  return ContentPropertyDataTypeEnum.ProtectedInvalidEnumValue;
}

int? encodeContentPropertyDataTypeEnum (ContentPropertyDataTypeEnum? value) {
  return value?.value;
}

const Map<ContentPropertyDataTypeEnum, int> _$ContentPropertyDataTypeEnumEnumMap = <ContentPropertyDataTypeEnum, int>{
    ContentPropertyDataTypeEnum.None:0,
    ContentPropertyDataTypeEnum.Plaintext:1,
    ContentPropertyDataTypeEnum.Html:2,
    ContentPropertyDataTypeEnum.Dropdown:3,
    ContentPropertyDataTypeEnum.List:4,
    ContentPropertyDataTypeEnum.Json:5,
    ContentPropertyDataTypeEnum.Content:6,
    ContentPropertyDataTypeEnum.Representation:7,
    ContentPropertyDataTypeEnum.Set:8,
    ContentPropertyDataTypeEnum.File:9,
    ContentPropertyDataTypeEnum.FolderSet:10,
    ContentPropertyDataTypeEnum.Date:11,
    ContentPropertyDataTypeEnum.MultilinePlaintext:12,
    ContentPropertyDataTypeEnum.DestinyContent:13,
    ContentPropertyDataTypeEnum.Color:14,
};
const Map<int, ContentPropertyDataTypeEnum> _$ContentPropertyDataTypeEnumValueMap = <int, ContentPropertyDataTypeEnum>{
    0:ContentPropertyDataTypeEnum.None,
    1:ContentPropertyDataTypeEnum.Plaintext,
    2:ContentPropertyDataTypeEnum.Html,
    3:ContentPropertyDataTypeEnum.Dropdown,
    4:ContentPropertyDataTypeEnum.List,
    5:ContentPropertyDataTypeEnum.Json,
    6:ContentPropertyDataTypeEnum.Content,
    7:ContentPropertyDataTypeEnum.Representation,
    8:ContentPropertyDataTypeEnum.Set,
    9:ContentPropertyDataTypeEnum.File,
    10:ContentPropertyDataTypeEnum.FolderSet,
    11:ContentPropertyDataTypeEnum.Date,
    12:ContentPropertyDataTypeEnum.MultilinePlaintext,
    13:ContentPropertyDataTypeEnum.DestinyContent,
    14:ContentPropertyDataTypeEnum.Color,
};