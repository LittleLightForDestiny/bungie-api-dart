import 'destiny_stat.dart';
import 'destiny_stat.dart';
class DestinyTalentNodeStatBlock{
	List<DestinyStat> currentStepStats;
	List<DestinyStat> nextStepStats;
	DestinyTalentNodeStatBlock(
		List<DestinyStat> this.currentStepStats,
		List<DestinyStat> this.nextStepStats,
	);

	static DestinyTalentNodeStatBlock fromJson(Map<String, dynamic> data){
		return new DestinyTalentNodeStatBlock(
				DestinyStat.fromList(data['currentStepStats']),
				DestinyStat.fromList(data['nextStepStats']),
		);
	}

	static List<DestinyTalentNodeStatBlock> fromList(List<dynamic> data){
		List<DestinyTalentNodeStatBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeStatBlock.fromJson(item));
    });
    return list;
	}
}