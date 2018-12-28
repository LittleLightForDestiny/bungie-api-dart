import 'destiny_objective_progress.dart';

/**  */
class DestinyPresentationNodeComponent{
	
	/** I know this doesn't look like a Flags Enumeration right now, but I assure you it is. This is the possible states that a Presentation Node can be in, and it is almost certain that its potential states will increase in the future. So don't treat it like a straight up enumeration. */
	int state;
	
	/** An optional property: presentation nodes MAY have objectives, which can be used to infer more human readable data about the progress. However, progressValue and completionValue ought to be considered the canonical values for progress on Progression Nodes. */
	DestinyObjectiveProgress objective;
	
	/** How much of the presentation node is considered to be completed so far by the given character/profile. */
	int progressValue;
	
	/** The value at which the presentation ode is considered to be completed. */
	int completionValue;
	DestinyPresentationNodeComponent(
		this.state,
		this.objective,
		this.progressValue,
		this.completionValue,
	);

	static DestinyPresentationNodeComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeComponent(
				data['state'],
				data['objective'] != null ? DestinyObjectiveProgress.fromMap(data['objective']) : null,
				data['progressValue'],
				data['completionValue'],
		);
	}

	static List<DestinyPresentationNodeComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
			data['objective'] = this.objective;
			data['progressValue'] = this.progressValue;
			data['completionValue'] = this.completionValue;
		return data;
	}
}