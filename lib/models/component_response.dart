
/* The base class for any component-returning object that may need to indicate information about the state of the component being returned. */
class ComponentResponse{
	
	/*  */
	int privacy;
	ComponentResponse(
		this.privacy,
	);

	static ComponentResponse fromMap(Map<String, dynamic> data){
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
      list.add(ComponentResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['privacy'] = this.privacy;
		return data;
	}
}