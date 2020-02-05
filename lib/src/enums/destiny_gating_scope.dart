import 'package:json_annotation/json_annotation.dart';

enum DestinyGatingScope {
  ///None = 0
  @JsonValue(0)
  None,
  ///Global = 1
  @JsonValue(1)
  Global,
  ///Clan = 2
  @JsonValue(2)
  Clan,
  ///Profile = 3
  @JsonValue(3)
  Profile,
  ///Character = 4
  @JsonValue(4)
  Character,
  ///Item = 5
  @JsonValue(5)
  Item,
  ///AssumedWorstCase = 6
  @JsonValue(6)
  AssumedWorstCase,
}

extension DestinyGatingScopeExtension on DestinyGatingScope{
  int get value {
    switch(this){
      case DestinyGatingScope.None:
        return 0;
      case DestinyGatingScope.Global:
        return 1;
      case DestinyGatingScope.Clan:
        return 2;
      case DestinyGatingScope.Profile:
        return 3;
      case DestinyGatingScope.Character:
        return 4;
      case DestinyGatingScope.Item:
        return 5;
      case DestinyGatingScope.AssumedWorstCase:
        return 6;
      default:
        return null;
    }
  }
}