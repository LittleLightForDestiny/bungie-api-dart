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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyMilestoneDisplayPreferenceExtension on DestinyMilestoneDisplayPreference{
  int? get value {
    if (_$DestinyMilestoneDisplayPreferenceEnumMap.containsKey(this)){
      return _$DestinyMilestoneDisplayPreferenceEnumMap[this];
    }
    return null;
  }
}

DestinyMilestoneDisplayPreference? decodeDestinyMilestoneDisplayPreference (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyMilestoneDisplayPreferenceValueMap.containsKey(value)){
    return _$DestinyMilestoneDisplayPreferenceValueMap[value];
  }

  return DestinyMilestoneDisplayPreference.ProtectedInvalidEnumValue;
}

int? encodeDestinyMilestoneDisplayPreference (DestinyMilestoneDisplayPreference? value) {
  return value?.value;
}

const Map<DestinyMilestoneDisplayPreference, int> _$DestinyMilestoneDisplayPreferenceEnumMap = <DestinyMilestoneDisplayPreference, int>{
    DestinyMilestoneDisplayPreference.MilestoneDefinition:0,
    DestinyMilestoneDisplayPreference.CurrentQuestSteps:1,
    DestinyMilestoneDisplayPreference.CurrentActivityChallenges:2,
};
const Map<int, DestinyMilestoneDisplayPreference> _$DestinyMilestoneDisplayPreferenceValueMap = <int, DestinyMilestoneDisplayPreference>{
    0:DestinyMilestoneDisplayPreference.MilestoneDefinition,
    1:DestinyMilestoneDisplayPreference.CurrentQuestSteps,
    2:DestinyMilestoneDisplayPreference.CurrentActivityChallenges,
};