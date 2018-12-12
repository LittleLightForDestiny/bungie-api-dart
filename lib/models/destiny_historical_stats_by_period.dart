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

	static DestinyHistoricalStatsByPeriod fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsByPeriod> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsByPeriod.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['allTime'] = this.allTime;
			data['allTimeTier1'] = this.allTimeTier1;
			data['allTimeTier2'] = this.allTimeTier2;
			data['allTimeTier3'] = this.allTimeTier3;
			data['daily'] = this.daily.map((item)=>item.toMap());
			data['monthly'] = this.monthly.map((item)=>item.toMap());
		return data;
	}
}