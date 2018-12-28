
/** Where the sausage gets made. Unlock Expressions are the foundation of the game's gating mechanics and investment-related restrictions. They can test Unlock Flags and Unlock Values for certain states, using a sufficient amount of logical operators such that unlock expressions are effectively Turing complete.
Use UnlockExpressionParser to evaluate expressions using an IUnlockContext parsed from Babel. */
class DestinyUnlockExpressionDefinition{
	
	/** A shortcut for determining the most restrictive gating that this expression performs. See the DestinyGatingScope enum's documentation for more details. */
	int scope;
	DestinyUnlockExpressionDefinition(
		this.scope,
	);

	static DestinyUnlockExpressionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockExpressionDefinition(
				data['scope'],
		);
	}

	static List<DestinyUnlockExpressionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockExpressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockExpressionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['scope'] = this.scope;
		return data;
	}
}