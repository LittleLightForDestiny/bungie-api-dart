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
    switch(this){
      case ForumMediaType.None:
        return 0;
      case ForumMediaType.Image:
        return 1;
      case ForumMediaType.Video:
        return 2;
      case ForumMediaType.Youtube:
        return 3;
      default:
        return null;
    }
  }
}