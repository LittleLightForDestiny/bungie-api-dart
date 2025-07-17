import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderOfferState {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Pending = 1
  @JsonValue(1)
  Pending,
  ///Accepted = 2
  @JsonValue(2)
  Accepted,
  ///Rejected = 3
  @JsonValue(3)
  Rejected,
  ///Deleted = 4
  @JsonValue(4)
  Deleted,
  ///Expired = 5
  @JsonValue(5)
  Expired,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderOfferStateExtension on DestinyFireteamFinderOfferState{
  int? get value {
    if (_$DestinyFireteamFinderOfferStateEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderOfferStateEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderOfferState? decodeDestinyFireteamFinderOfferState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderOfferStateValueMap.containsKey(value)){
    return _$DestinyFireteamFinderOfferStateValueMap[value];
  }

  return DestinyFireteamFinderOfferState.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderOfferState (DestinyFireteamFinderOfferState? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderOfferState, int> _$DestinyFireteamFinderOfferStateEnumMap = <DestinyFireteamFinderOfferState, int>{
    DestinyFireteamFinderOfferState.Unknown:0,
    DestinyFireteamFinderOfferState.Pending:1,
    DestinyFireteamFinderOfferState.Accepted:2,
    DestinyFireteamFinderOfferState.Rejected:3,
    DestinyFireteamFinderOfferState.Deleted:4,
    DestinyFireteamFinderOfferState.Expired:5,
};
const Map<int, DestinyFireteamFinderOfferState> _$DestinyFireteamFinderOfferStateValueMap = <int, DestinyFireteamFinderOfferState>{
    0:DestinyFireteamFinderOfferState.Unknown,
    1:DestinyFireteamFinderOfferState.Pending,
    2:DestinyFireteamFinderOfferState.Accepted,
    3:DestinyFireteamFinderOfferState.Rejected,
    4:DestinyFireteamFinderOfferState.Deleted,
    5:DestinyFireteamFinderOfferState.Expired,
};