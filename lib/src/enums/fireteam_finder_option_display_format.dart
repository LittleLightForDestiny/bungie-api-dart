import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderOptionDisplayFormat {
  ///Text = 0
  @JsonValue(0)
  Text,
  ///Integer = 1
  @JsonValue(1)
  Integer,
  ///Bool = 2
  @JsonValue(2)
  Bool,
  ///FormatString = 3
  @JsonValue(3)
  FormatString,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderOptionDisplayFormatExtension on FireteamFinderOptionDisplayFormat{
  int? get value {
    if (_$FireteamFinderOptionDisplayFormatEnumMap.containsKey(this)){
      return _$FireteamFinderOptionDisplayFormatEnumMap[this];
    }
    return null;
  }
}

FireteamFinderOptionDisplayFormat? decodeFireteamFinderOptionDisplayFormat (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderOptionDisplayFormatValueMap.containsKey(value)){
    return _$FireteamFinderOptionDisplayFormatValueMap[value];
  }

  return FireteamFinderOptionDisplayFormat.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderOptionDisplayFormat (FireteamFinderOptionDisplayFormat? value) {
  return value?.value;
}

const Map<FireteamFinderOptionDisplayFormat, int> _$FireteamFinderOptionDisplayFormatEnumMap = <FireteamFinderOptionDisplayFormat, int>{
    FireteamFinderOptionDisplayFormat.Text:0,
    FireteamFinderOptionDisplayFormat.Integer:1,
    FireteamFinderOptionDisplayFormat.Bool:2,
    FireteamFinderOptionDisplayFormat.FormatString:3,
};
const Map<int, FireteamFinderOptionDisplayFormat> _$FireteamFinderOptionDisplayFormatValueMap = <int, FireteamFinderOptionDisplayFormat>{
    0:FireteamFinderOptionDisplayFormat.Text,
    1:FireteamFinderOptionDisplayFormat.Integer,
    2:FireteamFinderOptionDisplayFormat.Bool,
    3:FireteamFinderOptionDisplayFormat.FormatString,
};