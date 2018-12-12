class EntityActionResult{
	int entityId;
	int result;
	EntityActionResult(
		int this.entityId,
		int this.result,
	);

	static EntityActionResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new EntityActionResult(
				data['entityId'],
				data['result'],
		);
	}

	static List<EntityActionResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<EntityActionResult> list = new List();
    data.forEach((item) {
      list.add(EntityActionResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['entityId'] = entityId;
			data['result'] = result;
	}
}