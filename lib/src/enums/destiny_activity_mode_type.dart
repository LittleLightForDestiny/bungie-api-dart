import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityModeType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Story = 2
  @JsonValue(2)
  Story,
  ///Strike = 3
  @JsonValue(3)
  Strike,
  ///Raid = 4
  @JsonValue(4)
  Raid,
  ///AllPvP = 5
  @JsonValue(5)
  AllPvP,
  ///Patrol = 6
  @JsonValue(6)
  Patrol,
  ///AllPvE = 7
  @JsonValue(7)
  AllPvE,
  ///Reserved9 = 9
  @JsonValue(9)
  Reserved9,
  ///Control = 10
  @JsonValue(10)
  Control,
  ///Reserved11 = 11
  @JsonValue(11)
  Reserved11,
  ///Clash = 12
  /// Clash -&gt; Destiny&#39;s name for Team Deathmatch. 4v4 combat, the team with the highest kills at the end of time wins.
  @JsonValue(12)
  Clash,
  ///Reserved13 = 13
  @JsonValue(13)
  Reserved13,
  ///CrimsonDoubles = 15
  @JsonValue(15)
  CrimsonDoubles,
  ///Nightfall = 16
  @JsonValue(16)
  Nightfall,
  ///HeroicNightfall = 17
  @JsonValue(17)
  HeroicNightfall,
  ///AllStrikes = 18
  @JsonValue(18)
  AllStrikes,
  ///IronBanner = 19
  @JsonValue(19)
  IronBanner,
  ///Reserved20 = 20
  @JsonValue(20)
  Reserved20,
  ///Reserved21 = 21
  @JsonValue(21)
  Reserved21,
  ///Reserved22 = 22
  @JsonValue(22)
  Reserved22,
  ///Reserved24 = 24
  @JsonValue(24)
  Reserved24,
  ///AllMayhem = 25
  @JsonValue(25)
  AllMayhem,
  ///Reserved26 = 26
  @JsonValue(26)
  Reserved26,
  ///Reserved27 = 27
  @JsonValue(27)
  Reserved27,
  ///Reserved28 = 28
  @JsonValue(28)
  Reserved28,
  ///Reserved29 = 29
  @JsonValue(29)
  Reserved29,
  ///Reserved30 = 30
  @JsonValue(30)
  Reserved30,
  ///Supremacy = 31
  @JsonValue(31)
  Supremacy,
  ///PrivateMatchesAll = 32
  @JsonValue(32)
  PrivateMatchesAll,
  ///Survival = 37
  @JsonValue(37)
  Survival,
  ///Countdown = 38
  @JsonValue(38)
  Countdown,
  ///TrialsOfTheNine = 39
  @JsonValue(39)
  TrialsOfTheNine,
  ///Social = 40
  @JsonValue(40)
  Social,
  ///TrialsCountdown = 41
  @JsonValue(41)
  TrialsCountdown,
  ///TrialsSurvival = 42
  @JsonValue(42)
  TrialsSurvival,
  ///IronBannerControl = 43
  @JsonValue(43)
  IronBannerControl,
  ///IronBannerClash = 44
  @JsonValue(44)
  IronBannerClash,
  ///IronBannerSupremacy = 45
  @JsonValue(45)
  IronBannerSupremacy,
  ///ScoredNightfall = 46
  @JsonValue(46)
  ScoredNightfall,
  ///ScoredHeroicNightfall = 47
  @JsonValue(47)
  ScoredHeroicNightfall,
  ///Rumble = 48
  @JsonValue(48)
  Rumble,
  ///AllDoubles = 49
  @JsonValue(49)
  AllDoubles,
  ///Doubles = 50
  @JsonValue(50)
  Doubles,
  ///PrivateMatchesClash = 51
  @JsonValue(51)
  PrivateMatchesClash,
  ///PrivateMatchesControl = 52
  @JsonValue(52)
  PrivateMatchesControl,
  ///PrivateMatchesSupremacy = 53
  @JsonValue(53)
  PrivateMatchesSupremacy,
  ///PrivateMatchesCountdown = 54
  @JsonValue(54)
  PrivateMatchesCountdown,
  ///PrivateMatchesSurvival = 55
  @JsonValue(55)
  PrivateMatchesSurvival,
  ///PrivateMatchesMayhem = 56
  @JsonValue(56)
  PrivateMatchesMayhem,
  ///PrivateMatchesRumble = 57
  @JsonValue(57)
  PrivateMatchesRumble,
  ///HeroicAdventure = 58
  @JsonValue(58)
  HeroicAdventure,
  ///Showdown = 59
  @JsonValue(59)
  Showdown,
  ///Lockdown = 60
  @JsonValue(60)
  Lockdown,
  ///Scorched = 61
  @JsonValue(61)
  Scorched,
  ///ScorchedTeam = 62
  @JsonValue(62)
  ScorchedTeam,
  ///Gambit = 63
  @JsonValue(63)
  Gambit,
  ///AllPvECompetitive = 64
  @JsonValue(64)
  AllPvECompetitive,
  ///Breakthrough = 65
  @JsonValue(65)
  Breakthrough,
  ///BlackArmoryRun = 66
  @JsonValue(66)
  BlackArmoryRun,
  ///Salvage = 67
  @JsonValue(67)
  Salvage,
  ///IronBannerSalvage = 68
  @JsonValue(68)
  IronBannerSalvage,
  ///PvPCompetitive = 69
  @JsonValue(69)
  PvPCompetitive,
  ///PvPQuickplay = 70
  @JsonValue(70)
  PvPQuickplay,
  ///ClashQuickplay = 71
  @JsonValue(71)
  ClashQuickplay,
  ///ClashCompetitive = 72
  @JsonValue(72)
  ClashCompetitive,
  ///ControlQuickplay = 73
  @JsonValue(73)
  ControlQuickplay,
  ///ControlCompetitive = 74
  @JsonValue(74)
  ControlCompetitive,
  ///GambitPrime = 75
  @JsonValue(75)
  GambitPrime,
  ///Reckoning = 76
  @JsonValue(76)
  Reckoning,
  ///Menagerie = 77
  @JsonValue(77)
  Menagerie,
  ///VexOffensive = 78
  @JsonValue(78)
  VexOffensive,
  ///NightmareHunt = 79
  @JsonValue(79)
  NightmareHunt,
  ///Elimination = 80
  @JsonValue(80)
  Elimination,
  ///Momentum = 81
  @JsonValue(81)
  Momentum,
  ///Dungeon = 82
  @JsonValue(82)
  Dungeon,
  ///Sundial = 83
  @JsonValue(83)
  Sundial,
  ///TrialsOfOsiris = 84
  @JsonValue(84)
  TrialsOfOsiris,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityModeTypeExtension on DestinyActivityModeType{
  int? get value {
    switch(this){
      case DestinyActivityModeType.None:
        return 0;
      case DestinyActivityModeType.Story:
        return 2;
      case DestinyActivityModeType.Strike:
        return 3;
      case DestinyActivityModeType.Raid:
        return 4;
      case DestinyActivityModeType.AllPvP:
        return 5;
      case DestinyActivityModeType.Patrol:
        return 6;
      case DestinyActivityModeType.AllPvE:
        return 7;
      case DestinyActivityModeType.Reserved9:
        return 9;
      case DestinyActivityModeType.Control:
        return 10;
      case DestinyActivityModeType.Reserved11:
        return 11;
      case DestinyActivityModeType.Clash:
        return 12;
      case DestinyActivityModeType.Reserved13:
        return 13;
      case DestinyActivityModeType.CrimsonDoubles:
        return 15;
      case DestinyActivityModeType.Nightfall:
        return 16;
      case DestinyActivityModeType.HeroicNightfall:
        return 17;
      case DestinyActivityModeType.AllStrikes:
        return 18;
      case DestinyActivityModeType.IronBanner:
        return 19;
      case DestinyActivityModeType.Reserved20:
        return 20;
      case DestinyActivityModeType.Reserved21:
        return 21;
      case DestinyActivityModeType.Reserved22:
        return 22;
      case DestinyActivityModeType.Reserved24:
        return 24;
      case DestinyActivityModeType.AllMayhem:
        return 25;
      case DestinyActivityModeType.Reserved26:
        return 26;
      case DestinyActivityModeType.Reserved27:
        return 27;
      case DestinyActivityModeType.Reserved28:
        return 28;
      case DestinyActivityModeType.Reserved29:
        return 29;
      case DestinyActivityModeType.Reserved30:
        return 30;
      case DestinyActivityModeType.Supremacy:
        return 31;
      case DestinyActivityModeType.PrivateMatchesAll:
        return 32;
      case DestinyActivityModeType.Survival:
        return 37;
      case DestinyActivityModeType.Countdown:
        return 38;
      case DestinyActivityModeType.TrialsOfTheNine:
        return 39;
      case DestinyActivityModeType.Social:
        return 40;
      case DestinyActivityModeType.TrialsCountdown:
        return 41;
      case DestinyActivityModeType.TrialsSurvival:
        return 42;
      case DestinyActivityModeType.IronBannerControl:
        return 43;
      case DestinyActivityModeType.IronBannerClash:
        return 44;
      case DestinyActivityModeType.IronBannerSupremacy:
        return 45;
      case DestinyActivityModeType.ScoredNightfall:
        return 46;
      case DestinyActivityModeType.ScoredHeroicNightfall:
        return 47;
      case DestinyActivityModeType.Rumble:
        return 48;
      case DestinyActivityModeType.AllDoubles:
        return 49;
      case DestinyActivityModeType.Doubles:
        return 50;
      case DestinyActivityModeType.PrivateMatchesClash:
        return 51;
      case DestinyActivityModeType.PrivateMatchesControl:
        return 52;
      case DestinyActivityModeType.PrivateMatchesSupremacy:
        return 53;
      case DestinyActivityModeType.PrivateMatchesCountdown:
        return 54;
      case DestinyActivityModeType.PrivateMatchesSurvival:
        return 55;
      case DestinyActivityModeType.PrivateMatchesMayhem:
        return 56;
      case DestinyActivityModeType.PrivateMatchesRumble:
        return 57;
      case DestinyActivityModeType.HeroicAdventure:
        return 58;
      case DestinyActivityModeType.Showdown:
        return 59;
      case DestinyActivityModeType.Lockdown:
        return 60;
      case DestinyActivityModeType.Scorched:
        return 61;
      case DestinyActivityModeType.ScorchedTeam:
        return 62;
      case DestinyActivityModeType.Gambit:
        return 63;
      case DestinyActivityModeType.AllPvECompetitive:
        return 64;
      case DestinyActivityModeType.Breakthrough:
        return 65;
      case DestinyActivityModeType.BlackArmoryRun:
        return 66;
      case DestinyActivityModeType.Salvage:
        return 67;
      case DestinyActivityModeType.IronBannerSalvage:
        return 68;
      case DestinyActivityModeType.PvPCompetitive:
        return 69;
      case DestinyActivityModeType.PvPQuickplay:
        return 70;
      case DestinyActivityModeType.ClashQuickplay:
        return 71;
      case DestinyActivityModeType.ClashCompetitive:
        return 72;
      case DestinyActivityModeType.ControlQuickplay:
        return 73;
      case DestinyActivityModeType.ControlCompetitive:
        return 74;
      case DestinyActivityModeType.GambitPrime:
        return 75;
      case DestinyActivityModeType.Reckoning:
        return 76;
      case DestinyActivityModeType.Menagerie:
        return 77;
      case DestinyActivityModeType.VexOffensive:
        return 78;
      case DestinyActivityModeType.NightmareHunt:
        return 79;
      case DestinyActivityModeType.Elimination:
        return 80;
      case DestinyActivityModeType.Momentum:
        return 81;
      case DestinyActivityModeType.Dungeon:
        return 82;
      case DestinyActivityModeType.Sundial:
        return 83;
      case DestinyActivityModeType.TrialsOfOsiris:
        return 84;
      default:
        return null;
    }
  }
}