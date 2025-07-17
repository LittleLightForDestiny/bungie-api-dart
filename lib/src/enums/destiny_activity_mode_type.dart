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
  ///Dares = 85
  @JsonValue(85)
  Dares,
  ///Offensive = 86
  @JsonValue(86)
  Offensive,
  ///LostSector = 87
  @JsonValue(87)
  LostSector,
  ///Rift = 88
  @JsonValue(88)
  Rift,
  ///ZoneControl = 89
  @JsonValue(89)
  ZoneControl,
  ///IronBannerRift = 90
  @JsonValue(90)
  IronBannerRift,
  ///IronBannerZoneControl = 91
  @JsonValue(91)
  IronBannerZoneControl,
  ///Relic = 92
  @JsonValue(92)
  Relic,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityModeTypeExtension on DestinyActivityModeType{
  int? get value {
    if (_$DestinyActivityModeTypeEnumMap.containsKey(this)){
      return _$DestinyActivityModeTypeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityModeType? decodeDestinyActivityModeType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityModeTypeValueMap.containsKey(value)){
    return _$DestinyActivityModeTypeValueMap[value];
  }

  return DestinyActivityModeType.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityModeType (DestinyActivityModeType? value) {
  return value?.value;
}

const Map<DestinyActivityModeType, int> _$DestinyActivityModeTypeEnumMap = <DestinyActivityModeType, int>{
    DestinyActivityModeType.None:0,
    DestinyActivityModeType.Story:2,
    DestinyActivityModeType.Strike:3,
    DestinyActivityModeType.Raid:4,
    DestinyActivityModeType.AllPvP:5,
    DestinyActivityModeType.Patrol:6,
    DestinyActivityModeType.AllPvE:7,
    DestinyActivityModeType.Reserved9:9,
    DestinyActivityModeType.Control:10,
    DestinyActivityModeType.Reserved11:11,
    DestinyActivityModeType.Clash:12,
    DestinyActivityModeType.Reserved13:13,
    DestinyActivityModeType.CrimsonDoubles:15,
    DestinyActivityModeType.Nightfall:16,
    DestinyActivityModeType.HeroicNightfall:17,
    DestinyActivityModeType.AllStrikes:18,
    DestinyActivityModeType.IronBanner:19,
    DestinyActivityModeType.Reserved20:20,
    DestinyActivityModeType.Reserved21:21,
    DestinyActivityModeType.Reserved22:22,
    DestinyActivityModeType.Reserved24:24,
    DestinyActivityModeType.AllMayhem:25,
    DestinyActivityModeType.Reserved26:26,
    DestinyActivityModeType.Reserved27:27,
    DestinyActivityModeType.Reserved28:28,
    DestinyActivityModeType.Reserved29:29,
    DestinyActivityModeType.Reserved30:30,
    DestinyActivityModeType.Supremacy:31,
    DestinyActivityModeType.PrivateMatchesAll:32,
    DestinyActivityModeType.Survival:37,
    DestinyActivityModeType.Countdown:38,
    DestinyActivityModeType.TrialsOfTheNine:39,
    DestinyActivityModeType.Social:40,
    DestinyActivityModeType.TrialsCountdown:41,
    DestinyActivityModeType.TrialsSurvival:42,
    DestinyActivityModeType.IronBannerControl:43,
    DestinyActivityModeType.IronBannerClash:44,
    DestinyActivityModeType.IronBannerSupremacy:45,
    DestinyActivityModeType.ScoredNightfall:46,
    DestinyActivityModeType.ScoredHeroicNightfall:47,
    DestinyActivityModeType.Rumble:48,
    DestinyActivityModeType.AllDoubles:49,
    DestinyActivityModeType.Doubles:50,
    DestinyActivityModeType.PrivateMatchesClash:51,
    DestinyActivityModeType.PrivateMatchesControl:52,
    DestinyActivityModeType.PrivateMatchesSupremacy:53,
    DestinyActivityModeType.PrivateMatchesCountdown:54,
    DestinyActivityModeType.PrivateMatchesSurvival:55,
    DestinyActivityModeType.PrivateMatchesMayhem:56,
    DestinyActivityModeType.PrivateMatchesRumble:57,
    DestinyActivityModeType.HeroicAdventure:58,
    DestinyActivityModeType.Showdown:59,
    DestinyActivityModeType.Lockdown:60,
    DestinyActivityModeType.Scorched:61,
    DestinyActivityModeType.ScorchedTeam:62,
    DestinyActivityModeType.Gambit:63,
    DestinyActivityModeType.AllPvECompetitive:64,
    DestinyActivityModeType.Breakthrough:65,
    DestinyActivityModeType.BlackArmoryRun:66,
    DestinyActivityModeType.Salvage:67,
    DestinyActivityModeType.IronBannerSalvage:68,
    DestinyActivityModeType.PvPCompetitive:69,
    DestinyActivityModeType.PvPQuickplay:70,
    DestinyActivityModeType.ClashQuickplay:71,
    DestinyActivityModeType.ClashCompetitive:72,
    DestinyActivityModeType.ControlQuickplay:73,
    DestinyActivityModeType.ControlCompetitive:74,
    DestinyActivityModeType.GambitPrime:75,
    DestinyActivityModeType.Reckoning:76,
    DestinyActivityModeType.Menagerie:77,
    DestinyActivityModeType.VexOffensive:78,
    DestinyActivityModeType.NightmareHunt:79,
    DestinyActivityModeType.Elimination:80,
    DestinyActivityModeType.Momentum:81,
    DestinyActivityModeType.Dungeon:82,
    DestinyActivityModeType.Sundial:83,
    DestinyActivityModeType.TrialsOfOsiris:84,
    DestinyActivityModeType.Dares:85,
    DestinyActivityModeType.Offensive:86,
    DestinyActivityModeType.LostSector:87,
    DestinyActivityModeType.Rift:88,
    DestinyActivityModeType.ZoneControl:89,
    DestinyActivityModeType.IronBannerRift:90,
    DestinyActivityModeType.IronBannerZoneControl:91,
    DestinyActivityModeType.Relic:92,
};
const Map<int, DestinyActivityModeType> _$DestinyActivityModeTypeValueMap = <int, DestinyActivityModeType>{
    0:DestinyActivityModeType.None,
    2:DestinyActivityModeType.Story,
    3:DestinyActivityModeType.Strike,
    4:DestinyActivityModeType.Raid,
    5:DestinyActivityModeType.AllPvP,
    6:DestinyActivityModeType.Patrol,
    7:DestinyActivityModeType.AllPvE,
    9:DestinyActivityModeType.Reserved9,
    10:DestinyActivityModeType.Control,
    11:DestinyActivityModeType.Reserved11,
    12:DestinyActivityModeType.Clash,
    13:DestinyActivityModeType.Reserved13,
    15:DestinyActivityModeType.CrimsonDoubles,
    16:DestinyActivityModeType.Nightfall,
    17:DestinyActivityModeType.HeroicNightfall,
    18:DestinyActivityModeType.AllStrikes,
    19:DestinyActivityModeType.IronBanner,
    20:DestinyActivityModeType.Reserved20,
    21:DestinyActivityModeType.Reserved21,
    22:DestinyActivityModeType.Reserved22,
    24:DestinyActivityModeType.Reserved24,
    25:DestinyActivityModeType.AllMayhem,
    26:DestinyActivityModeType.Reserved26,
    27:DestinyActivityModeType.Reserved27,
    28:DestinyActivityModeType.Reserved28,
    29:DestinyActivityModeType.Reserved29,
    30:DestinyActivityModeType.Reserved30,
    31:DestinyActivityModeType.Supremacy,
    32:DestinyActivityModeType.PrivateMatchesAll,
    37:DestinyActivityModeType.Survival,
    38:DestinyActivityModeType.Countdown,
    39:DestinyActivityModeType.TrialsOfTheNine,
    40:DestinyActivityModeType.Social,
    41:DestinyActivityModeType.TrialsCountdown,
    42:DestinyActivityModeType.TrialsSurvival,
    43:DestinyActivityModeType.IronBannerControl,
    44:DestinyActivityModeType.IronBannerClash,
    45:DestinyActivityModeType.IronBannerSupremacy,
    46:DestinyActivityModeType.ScoredNightfall,
    47:DestinyActivityModeType.ScoredHeroicNightfall,
    48:DestinyActivityModeType.Rumble,
    49:DestinyActivityModeType.AllDoubles,
    50:DestinyActivityModeType.Doubles,
    51:DestinyActivityModeType.PrivateMatchesClash,
    52:DestinyActivityModeType.PrivateMatchesControl,
    53:DestinyActivityModeType.PrivateMatchesSupremacy,
    54:DestinyActivityModeType.PrivateMatchesCountdown,
    55:DestinyActivityModeType.PrivateMatchesSurvival,
    56:DestinyActivityModeType.PrivateMatchesMayhem,
    57:DestinyActivityModeType.PrivateMatchesRumble,
    58:DestinyActivityModeType.HeroicAdventure,
    59:DestinyActivityModeType.Showdown,
    60:DestinyActivityModeType.Lockdown,
    61:DestinyActivityModeType.Scorched,
    62:DestinyActivityModeType.ScorchedTeam,
    63:DestinyActivityModeType.Gambit,
    64:DestinyActivityModeType.AllPvECompetitive,
    65:DestinyActivityModeType.Breakthrough,
    66:DestinyActivityModeType.BlackArmoryRun,
    67:DestinyActivityModeType.Salvage,
    68:DestinyActivityModeType.IronBannerSalvage,
    69:DestinyActivityModeType.PvPCompetitive,
    70:DestinyActivityModeType.PvPQuickplay,
    71:DestinyActivityModeType.ClashQuickplay,
    72:DestinyActivityModeType.ClashCompetitive,
    73:DestinyActivityModeType.ControlQuickplay,
    74:DestinyActivityModeType.ControlCompetitive,
    75:DestinyActivityModeType.GambitPrime,
    76:DestinyActivityModeType.Reckoning,
    77:DestinyActivityModeType.Menagerie,
    78:DestinyActivityModeType.VexOffensive,
    79:DestinyActivityModeType.NightmareHunt,
    80:DestinyActivityModeType.Elimination,
    81:DestinyActivityModeType.Momentum,
    82:DestinyActivityModeType.Dungeon,
    83:DestinyActivityModeType.Sundial,
    84:DestinyActivityModeType.TrialsOfOsiris,
    85:DestinyActivityModeType.Dares,
    86:DestinyActivityModeType.Offensive,
    87:DestinyActivityModeType.LostSector,
    88:DestinyActivityModeType.Rift,
    89:DestinyActivityModeType.ZoneControl,
    90:DestinyActivityModeType.IronBannerRift,
    91:DestinyActivityModeType.IronBannerZoneControl,
    92:DestinyActivityModeType.Relic,
};