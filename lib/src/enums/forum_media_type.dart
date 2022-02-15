import 'package:json_annotation/json_annotation.dart';

enum ForumMediaType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Image = 1
  @JsonValue(1)
  Image,
  ///Video = 2
  @JsonValue(2)
  Video,
  ///Youtube = 3
  @JsonValue(3)
  Youtube,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumMediaTypeExtension on ForumMediaType{
  int? get value {
    if (_$ForumMediaTypeEnumMap.containsKey(this)){
      return _$ForumMediaTypeEnumMap[this];
    }
    return null;
  }
}

ForumMediaType? decodeForumMediaType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumMediaTypeValueMap.containsKey(value)){
    return _$ForumMediaTypeValueMap[value];
  }

  return ForumMediaType.ProtectedInvalidEnumValue;
}

int? encodeForumMediaType (ForumMediaType? value) {
  return value?.value;
}

const Map<ForumMediaType, int> _$ForumMediaTypeEnumMap = <ForumMediaType, int>{
    ForumMediaType.None:0,
    ForumMediaType.Image:1,
    ForumMediaType.Video:2,
    ForumMediaType.Youtube:3,
};
const Map<int, ForumMediaType> _$ForumMediaTypeValueMap = <int, ForumMediaType>{
    0:ForumMediaType.None,
    1:ForumMediaType.Image,
    2:ForumMediaType.Video,
    3:ForumMediaType.Youtube,
};