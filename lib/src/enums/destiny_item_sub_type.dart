import 'package:json_annotation/json_annotation.dart';

enum DestinyItemSubType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Crucible = 1
  /// DEPRECATED. Items can be both &quot;Crucible&quot; and something else interesting.
  @JsonValue(1)
  Crucible,
  ///Vanguard = 2
  /// DEPRECATED. An item can both be &quot;Vanguard&quot; and something else.
  @JsonValue(2)
  Vanguard,
  ///Exotic = 5
  /// DEPRECATED. An item can both be Exotic and something else.
  @JsonValue(5)
  Exotic,
  ///AutoRifle = 6
  @JsonValue(6)
  AutoRifle,
  ///Shotgun = 7
  @JsonValue(7)
  Shotgun,
  ///Machinegun = 8
  @JsonValue(8)
  Machinegun,
  ///HandCannon = 9
  @JsonValue(9)
  HandCannon,
  ///RocketLauncher = 10
  @JsonValue(10)
  RocketLauncher,
  ///FusionRifle = 11
  @JsonValue(11)
  FusionRifle,
  ///SniperRifle = 12
  @JsonValue(12)
  SniperRifle,
  ///PulseRifle = 13
  @JsonValue(13)
  PulseRifle,
  ///ScoutRifle = 14
  @JsonValue(14)
  ScoutRifle,
  ///Crm = 16
  /// DEPRECATED. An item can both be CRM and something else.
  @JsonValue(16)
  Crm,
  ///Sidearm = 17
  @JsonValue(17)
  Sidearm,
  ///Sword = 18
  @JsonValue(18)
  Sword,
  ///Mask = 19
  @JsonValue(19)
  Mask,
  ///Shader = 20
  @JsonValue(20)
  Shader,
  ///Ornament = 21
  @JsonValue(21)
  Ornament,
  ///FusionRifleLine = 22
  @JsonValue(22)
  FusionRifleLine,
  ///GrenadeLauncher = 23
  @JsonValue(23)
  GrenadeLauncher,
  ///SubmachineGun = 24
  @JsonValue(24)
  SubmachineGun,
  ///TraceRifle = 25
  @JsonValue(25)
  TraceRifle,
  ///HelmetArmor = 26
  @JsonValue(26)
  HelmetArmor,
  ///GauntletsArmor = 27
  @JsonValue(27)
  GauntletsArmor,
  ///ChestArmor = 28
  @JsonValue(28)
  ChestArmor,
  ///LegArmor = 29
  @JsonValue(29)
  LegArmor,
  ///ClassArmor = 30
  @JsonValue(30)
  ClassArmor,
  ///Bow = 31
  @JsonValue(31)
  Bow,
  ///DummyRepeatableBounty = 32
  @JsonValue(32)
  DummyRepeatableBounty,
  ///Glaive = 33
  @JsonValue(33)
  Glaive,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyItemSubTypeExtension on DestinyItemSubType{
  int? get value {
    if (_$DestinyItemSubTypeEnumMap.containsKey(this)){
      return _$DestinyItemSubTypeEnumMap[this];
    }
    return null;
  }
}

DestinyItemSubType? decodeDestinyItemSubType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyItemSubTypeValueMap.containsKey(value)){
    return _$DestinyItemSubTypeValueMap[value];
  }

  return DestinyItemSubType.ProtectedInvalidEnumValue;
}

int? encodeDestinyItemSubType (DestinyItemSubType? value) {
  return value?.value;
}

const Map<DestinyItemSubType, int> _$DestinyItemSubTypeEnumMap = <DestinyItemSubType, int>{
    DestinyItemSubType.None:0,
    DestinyItemSubType.Crucible:1,
    DestinyItemSubType.Vanguard:2,
    DestinyItemSubType.Exotic:5,
    DestinyItemSubType.AutoRifle:6,
    DestinyItemSubType.Shotgun:7,
    DestinyItemSubType.Machinegun:8,
    DestinyItemSubType.HandCannon:9,
    DestinyItemSubType.RocketLauncher:10,
    DestinyItemSubType.FusionRifle:11,
    DestinyItemSubType.SniperRifle:12,
    DestinyItemSubType.PulseRifle:13,
    DestinyItemSubType.ScoutRifle:14,
    DestinyItemSubType.Crm:16,
    DestinyItemSubType.Sidearm:17,
    DestinyItemSubType.Sword:18,
    DestinyItemSubType.Mask:19,
    DestinyItemSubType.Shader:20,
    DestinyItemSubType.Ornament:21,
    DestinyItemSubType.FusionRifleLine:22,
    DestinyItemSubType.GrenadeLauncher:23,
    DestinyItemSubType.SubmachineGun:24,
    DestinyItemSubType.TraceRifle:25,
    DestinyItemSubType.HelmetArmor:26,
    DestinyItemSubType.GauntletsArmor:27,
    DestinyItemSubType.ChestArmor:28,
    DestinyItemSubType.LegArmor:29,
    DestinyItemSubType.ClassArmor:30,
    DestinyItemSubType.Bow:31,
    DestinyItemSubType.DummyRepeatableBounty:32,
    DestinyItemSubType.Glaive:33,
};
const Map<int, DestinyItemSubType> _$DestinyItemSubTypeValueMap = <int, DestinyItemSubType>{
    0:DestinyItemSubType.None,
    1:DestinyItemSubType.Crucible,
    2:DestinyItemSubType.Vanguard,
    5:DestinyItemSubType.Exotic,
    6:DestinyItemSubType.AutoRifle,
    7:DestinyItemSubType.Shotgun,
    8:DestinyItemSubType.Machinegun,
    9:DestinyItemSubType.HandCannon,
    10:DestinyItemSubType.RocketLauncher,
    11:DestinyItemSubType.FusionRifle,
    12:DestinyItemSubType.SniperRifle,
    13:DestinyItemSubType.PulseRifle,
    14:DestinyItemSubType.ScoutRifle,
    16:DestinyItemSubType.Crm,
    17:DestinyItemSubType.Sidearm,
    18:DestinyItemSubType.Sword,
    19:DestinyItemSubType.Mask,
    20:DestinyItemSubType.Shader,
    21:DestinyItemSubType.Ornament,
    22:DestinyItemSubType.FusionRifleLine,
    23:DestinyItemSubType.GrenadeLauncher,
    24:DestinyItemSubType.SubmachineGun,
    25:DestinyItemSubType.TraceRifle,
    26:DestinyItemSubType.HelmetArmor,
    27:DestinyItemSubType.GauntletsArmor,
    28:DestinyItemSubType.ChestArmor,
    29:DestinyItemSubType.LegArmor,
    30:DestinyItemSubType.ClassArmor,
    31:DestinyItemSubType.Bow,
    32:DestinyItemSubType.DummyRepeatableBounty,
    33:DestinyItemSubType.Glaive,
};