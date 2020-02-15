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
  int get value {
    switch(this){
      case ContentPropertyDataTypeEnum.None:
        return 0;
      case ContentPropertyDataTypeEnum.Plaintext:
        return 1;
      case ContentPropertyDataTypeEnum.Html:
        return 2;
      case ContentPropertyDataTypeEnum.Dropdown:
        return 3;
      case ContentPropertyDataTypeEnum.List:
        return 4;
      case ContentPropertyDataTypeEnum.Json:
        return 5;
      case ContentPropertyDataTypeEnum.Content:
        return 6;
      case ContentPropertyDataTypeEnum.Representation:
        return 7;
      case ContentPropertyDataTypeEnum.Set:
        return 8;
      case ContentPropertyDataTypeEnum.File:
        return 9;
      case ContentPropertyDataTypeEnum.FolderSet:
        return 10;
      case ContentPropertyDataTypeEnum.Date:
        return 11;
      case ContentPropertyDataTypeEnum.MultilinePlaintext:
        return 12;
      case ContentPropertyDataTypeEnum.DestinyContent:
        return 13;
      case ContentPropertyDataTypeEnum.Color:
        return 14;
      default:
        return null;
    }
  }
}