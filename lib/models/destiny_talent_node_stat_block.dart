import 'destiny_stat.dart';
import 'destiny_stat.dart';
class DestinyTalentNodeStatBlock{
	List<DestinyStat> currentStepStats;
	List<DestinyStat> nextStepStats;
	DestinyTalentNodeStatBlock(
		List<DestinyStat> this.currentStepStats,
		List<DestinyStat> this.nextStepStats,
	);

	static DestinyTalentNodeStatBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeStatBlock(
				DestinyStat.fromList(data['currentStepStats']),
				DestinyStat.fromList(data['nextStepStats']),
		);
	}

	static List<DestinyTalentNodeStatBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeStatBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeStatBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['currentStepStats'] = this.currentStepStats.map((item)=>item.toMap());
			data['nextStepStats'] = this.nextStepStats.map((item)=>item.toMap());
		return data;
	}
}