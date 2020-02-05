import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationScreenStyle {
  ///Default = 0
  /// Use the &quot;default&quot; view for the presentation nodes.
  @JsonValue(0)
  Default,
  ///CategorySets = 1
  /// Show sub-items as &quot;category sets&quot;. In-game, you&#39;d see these as a vertical list of child presentation nodes - armor sets for example - and the icons of items within those sets displayed horizontally.
  @JsonValue(1)
  CategorySets,
  ///Badge = 2
  /// Show sub-items as Badges. (I know, I know. We don&#39;t need no stinkin&#39; badges har har har)
  @JsonValue(2)
  Badge,
}

extension DestinyPresentationScreenStyleExtension on DestinyPresentationScreenStyle{
  int get value {
    switch(this){
      case DestinyPresentationScreenStyle.Default:
        return 0;
      case DestinyPresentationScreenStyle.CategorySets:
        return 1;
      case DestinyPresentationScreenStyle.Badge:
        return 2;
      default:
        return null;
    }
  }
}