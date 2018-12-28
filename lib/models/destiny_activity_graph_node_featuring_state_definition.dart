
/** Nodes can have different visual states. This object represents a single visual state ("highlight type") that a node can be in, and the unlock expression condition to determine whether it should be set. */
class DestinyActivityGraphNodeFeaturingStateDefinition{
	
	/** The node can be highlighted in a variety of ways - the game iterates through these and finds the first FeaturingState that is valid at the present moment given the Game, Account, and Character state, and renders the node in that state. See the ActivityGraphNodeHighlightType enum for possible values. */
	int highlightType;
	DestinyActivityGraphNodeFeaturingStateDefinition(
		this.highlightType,
	);

	static DestinyActivityGraphNodeFeaturingStateDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeFeaturingStateDefinition(
				data['highlightType'],
		);
	}

	static List<DestinyActivityGraphNodeFeaturingStateDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeFeaturingStateDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeFeaturingStateDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['highlightType'] = this.highlightType;
		return data;
	}
}