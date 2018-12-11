class ComponentResponse{
	int privacy;
	ComponentResponse(
		int this.privacy,
	);

	static ComponentResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ComponentResponse(
				data['privacy'],
		);
	}

	static List<ComponentResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ComponentResponse> list = new List();
    data.forEach((item) {
      list.add(ComponentResponse.fromJson(item));
    });
    return list;
	}
}