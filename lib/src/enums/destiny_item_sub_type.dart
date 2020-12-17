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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyItemSubTypeExtension on DestinyItemSubType{
  int get value {
    switch(this){
      case DestinyItemSubType.None:
        return 0;
      case DestinyItemSubType.Crucible:
        return 1;
      case DestinyItemSubType.Vanguard:
        return 2;
      case DestinyItemSubType.Exotic:
        return 5;
      case DestinyItemSubType.AutoRifle:
        return 6;
      case DestinyItemSubType.Shotgun:
        return 7;
      case DestinyItemSubType.Machinegun:
        return 8;
      case DestinyItemSubType.HandCannon:
        return 9;
      case DestinyItemSubType.RocketLauncher:
        return 10;
      case DestinyItemSubType.FusionRifle:
        return 11;
      case DestinyItemSubType.SniperRifle:
        return 12;
      case DestinyItemSubType.PulseRifle:
        return 13;
      case DestinyItemSubType.ScoutRifle:
        return 14;
      case DestinyItemSubType.Crm:
        return 16;
      case DestinyItemSubType.Sidearm:
        return 17;
      case DestinyItemSubType.Sword:
        return 18;
      case DestinyItemSubType.Mask:
        return 19;
      case DestinyItemSubType.Shader:
        return 20;
      case DestinyItemSubType.Ornament:
        return 21;
      case DestinyItemSubType.FusionRifleLine:
        return 22;
      case DestinyItemSubType.GrenadeLauncher:
        return 23;
      case DestinyItemSubType.SubmachineGun:
        return 24;
      case DestinyItemSubType.TraceRifle:
        return 25;
      case DestinyItemSubType.HelmetArmor:
        return 26;
      case DestinyItemSubType.GauntletsArmor:
        return 27;
      case DestinyItemSubType.ChestArmor:
        return 28;
      case DestinyItemSubType.LegArmor:
        return 29;
      case DestinyItemSubType.ClassArmor:
        return 30;
      case DestinyItemSubType.Bow:
        return 31;
      case DestinyItemSubType.DummyRepeatableBounty:
        return 32;
      default:
        return null;
    }
  }
}