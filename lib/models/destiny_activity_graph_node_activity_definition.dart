
/* The actual activity to be redirected to when you click on the node. Note that a node can have many Activities attached to it: but only one will be active at any given time. The list of Node Activities will be traversed, and the first one found to be active will be displayed. This way, a node can layer multiple variants of an activity on top of each other. For instance, one node can control the weekly Crucible Playlist. There are multiple possible playlists, but only one is active for the week. */
class DestinyActivityGraphNodeActivityDefinition{
	
	/* An identifier for this node activity. It is only guaranteed to be unique within the Activity Graph. */
	int nodeActivityId;
	
	/* The activity that will be activated if the user clicks on this node. Controls all activity-related information displayed on the node if it is active (the text shown in the tooltip etc) */
	int activityHash;
	DestinyActivityGraphNodeActivityDefinition(
		this.nodeActivityId,
		this.activityHash,
	);

	static DestinyActivityGraphNodeActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeActivityDefinition(
				data['nodeActivityId'],
				data['activityHash'],
		);
	}

	static List<DestinyActivityGraphNodeActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeActivityId'] = this.nodeActivityId;
			data['activityHash'] = this.activityHash;
		return data;
	}
}