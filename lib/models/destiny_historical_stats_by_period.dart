import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_period_group.dart';
import 'destiny_historical_stats_period_group.dart';
class DestinyHistoricalStatsByPeriod{
	Map<DestinyHistoricalStatsValue, dynamic> allTime;
	Map<DestinyHistoricalStatsValue, dynamic> allTimeTier1;
	Map<DestinyHistoricalStatsValue, dynamic> allTimeTier2;
	Map<DestinyHistoricalStatsValue, dynamic> allTimeTier3;
	List<DestinyHistoricalStatsPeriodGroup> daily;
	List<DestinyHistoricalStatsPeriodGroup> monthly;
	DestinyHistoricalStatsByPeriod(
		Map<DestinyHistoricalStatsValue, dynamic> this.allTime,
		Map<DestinyHistoricalStatsValue, dynamic> this.allTimeTier1,
		Map<DestinyHistoricalStatsValue, dynamic> this.allTimeTier2,
		Map<DestinyHistoricalStatsValue, dynamic> this.allTimeTier3,
		List<DestinyHistoricalStatsPeriodGroup> this.daily,
		List<DestinyHistoricalStatsPeriodGroup> this.monthly,
	);

	static DestinyHistoricalStatsByPeriod fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsByPeriod(
				data['allTime'],
				data['allTimeTier1'],
				data['allTimeTier2'],
				data['allTimeTier3'],
				DestinyHistoricalStatsPeriodGroup.fromList(data['daily']),
				DestinyHistoricalStatsPeriodGroup.fromList(data['monthly']),
		);
	}

	static List<DestinyHistoricalStatsByPeriod> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsByPeriod> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsByPeriod.fromJson(item));
    });
    return list;
	}
}