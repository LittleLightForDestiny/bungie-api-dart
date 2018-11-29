class EntityActionResult{
	int entityId;
	int result;
	EntityActionResult(
		int this.entityId,
		int this.result,
	);

	static EntityActionResult fromJson(Map<String, dynamic> data){
		return new EntityActionResult(
				data['entityId'],
				data['result'],
		);
	}

	static List<EntityActionResult> fromList(List<dynamic> data){
		List<EntityActionResult> list = new List();
    data.forEach((item) {
      list.add(EntityActionResult.fromJson(item));
    });
    return list;
	}
}