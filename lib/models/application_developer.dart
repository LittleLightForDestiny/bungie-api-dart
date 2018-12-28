import 'user_info_card.dart';

/*  */
class ApplicationDeveloper{
	
	/*  */
	int role;
	
	/*  */
	int apiEulaVersion;
	
	/*  */
	UserInfoCard user;
	ApplicationDeveloper(
		this.role,
		this.apiEulaVersion,
		this.user,
	);

	static ApplicationDeveloper fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ApplicationDeveloper(
				data['role'],
				data['apiEulaVersion'],
				data['user'] != null ? UserInfoCard.fromMap(data['user']) : null,
		);
	}

	static List<ApplicationDeveloper> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ApplicationDeveloper> list = new List();
    data.forEach((item) {
      list.add(ApplicationDeveloper.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['role'] = this.role;
			data['apiEulaVersion'] = this.apiEulaVersion;
			data['user'] = this.user.toMap();
		return data;
	}
}