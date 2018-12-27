import 'destiny_stat.dart';
class DestinyTalentNodeStatBlock{
	List<DestinyStat> currentStepStats;
	List<DestinyStat> nextStepStats;
	DestinyTalentNodeStatBlock(
		this.currentStepStats,
		this.nextStepStats,
	);

	static DestinyTalentNodeStatBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeStatBlock(
				data['currentStepStats'] != null ? DestinyStat.fromList(data['currentStepStats']) : null,
				data['nextStepStats'] != null ? DestinyStat.fromList(data['nextStepStats']) : null,
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
			data['currentStepStats'] = this.currentStepStats.map((item)=>item.toMap()).toList();
			data['nextStepStats'] = this.nextStepStats.map((item)=>item.toMap()).toList();
		return data;
	}
}