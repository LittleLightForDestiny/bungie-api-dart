import 'package:json_annotation/json_annotation.dart';

enum CommunityContentSortMode {
  ///Trending = 0
  @JsonValue(0)
  Trending,
  ///Latest = 1
  @JsonValue(1)
  Latest,
  ///HighestRated = 2
  @JsonValue(2)
  HighestRated,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension CommunityContentSortModeExtension on CommunityContentSortMode{
  int? get value {
    if (_$CommunityContentSortModeEnumMap.containsKey(this)){
      return _$CommunityContentSortModeEnumMap[this];
    }
    return null;
  }
}

CommunityContentSortMode? decodeCommunityContentSortMode (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$CommunityContentSortModeValueMap.containsKey(value)){
    return _$CommunityContentSortModeValueMap[value];
  }

  return CommunityContentSortMode.ProtectedInvalidEnumValue;
}

int? encodeCommunityContentSortMode (CommunityContentSortMode? value) {
  return value?.value;
}

const Map<CommunityContentSortMode, int> _$CommunityContentSortModeEnumMap = <CommunityContentSortMode, int>{
    CommunityContentSortMode.Trending:0,
    CommunityContentSortMode.Latest:1,
    CommunityContentSortMode.HighestRated:2,
};
const Map<int, CommunityContentSortMode> _$CommunityContentSortModeValueMap = <int, CommunityContentSortMode>{
    0:CommunityContentSortMode.Trending,
    1:CommunityContentSortMode.Latest,
    2:CommunityContentSortMode.HighestRated,
};