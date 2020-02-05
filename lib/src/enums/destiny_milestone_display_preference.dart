import 'package:json_annotation/json_annotation.dart';

enum DestinyMilestoneDisplayPreference {
  ///MilestoneDefinition = 0
  /// Indicates you should show DestinyMilestoneDefinition.displayProperties for this Milestone.
  @JsonValue(0)
  MilestoneDefinition,
  ///CurrentQuestSteps = 1
  /// Indicates you should show the displayProperties for any currently active Quest Steps in DestinyMilestone.availableQuests.
  @JsonValue(1)
  CurrentQuestSteps,
  ///CurrentActivityChallenges = 2
  /// Indicates you should show the displayProperties for any currently active Activities and their Challenges in DestinyMilestone.activities.
  @JsonValue(2)
  CurrentActivityChallenges,
}

extension DestinyMilestoneDisplayPreferenceExtension on DestinyMilestoneDisplayPreference{
  int get value {
    switch(this){
      case DestinyMilestoneDisplayPreference.MilestoneDefinition:
        return 0;
      case DestinyMilestoneDisplayPreference.CurrentQuestSteps:
        return 1;
      case DestinyMilestoneDisplayPreference.CurrentActivityChallenges:
        return 2;
      default:
        return null;
    }
  }
}