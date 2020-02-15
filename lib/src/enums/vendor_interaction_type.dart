import 'package:json_annotation/json_annotation.dart';

enum VendorInteractionType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Undefined = 1
  /// An empty interaction. If this ends up in content, it is probably a game bug.
  @JsonValue(1)
  Undefined,
  ///QuestComplete = 2
  /// An interaction shown when you complete a quest and receive a reward.
  @JsonValue(2)
  QuestComplete,
  ///QuestContinue = 3
  /// An interaction shown when you talk to a Vendor as an intermediary step of a quest.
  @JsonValue(3)
  QuestContinue,
  ///ReputationPreview = 4
  /// An interaction shown when you are previewing the vendor&#39;s reputation rewards.
  @JsonValue(4)
  ReputationPreview,
  ///RankUpReward = 5
  /// An interaction shown when you rank up with the vendor.
  @JsonValue(5)
  RankUpReward,
  ///TokenTurnIn = 6
  /// An interaction shown when you have tokens to turn in for the vendor.
  @JsonValue(6)
  TokenTurnIn,
  ///QuestAccept = 7
  /// An interaction shown when you&#39;re accepting a new quest.
  @JsonValue(7)
  QuestAccept,
  ///ProgressTab = 8
  /// Honestly, this doesn&#39;t seem consistent to me. It is used to give you choices in the Cryptarch as well as some reward prompts by the Eververse vendor. I&#39;ll have to look into that further at some point.
  @JsonValue(8)
  ProgressTab,
  ///End = 9
  /// These seem even less consistent. I don&#39;t know what these are.
  @JsonValue(9)
  End,
  ///Start = 10
  /// Also seem inconsistent. I also don&#39;t know what these are offhand.
  @JsonValue(10)
  Start,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension VendorInteractionTypeExtension on VendorInteractionType{
  int get value {
    switch(this){
      case VendorInteractionType.Unknown:
        return 0;
      case VendorInteractionType.Undefined:
        return 1;
      case VendorInteractionType.QuestComplete:
        return 2;
      case VendorInteractionType.QuestContinue:
        return 3;
      case VendorInteractionType.ReputationPreview:
        return 4;
      case VendorInteractionType.RankUpReward:
        return 5;
      case VendorInteractionType.TokenTurnIn:
        return 6;
      case VendorInteractionType.QuestAccept:
        return 7;
      case VendorInteractionType.ProgressTab:
        return 8;
      case VendorInteractionType.End:
        return 9;
      case VendorInteractionType.Start:
        return 10;
      default:
        return null;
    }
  }
}