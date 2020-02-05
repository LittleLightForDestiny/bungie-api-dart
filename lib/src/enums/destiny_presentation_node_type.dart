import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationNodeType {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///Category = 1
  @JsonValue(1)
  Category,
  ///Collectibles = 2
  @JsonValue(2)
  Collectibles,
  ///Records = 3
  @JsonValue(3)
  Records,
}

extension DestinyPresentationNodeTypeExtension on DestinyPresentationNodeType{
  int get value {
    switch(this){
      case DestinyPresentationNodeType.Default:
        return 0;
      case DestinyPresentationNodeType.Category:
        return 1;
      case DestinyPresentationNodeType.Collectibles:
        return 2;
      case DestinyPresentationNodeType.Records:
        return 3;
      default:
        return null;
    }
  }
}