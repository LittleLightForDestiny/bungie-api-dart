import 'destiny_currencies_component.dart';

/*  */
class SingleComponentResponseOfDestinyCurrenciesComponent{
	
	/*  */
	DestinyCurrenciesComponent data;
	
	/*  */
	int privacy;
	SingleComponentResponseOfDestinyCurrenciesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCurrenciesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCurrenciesComponent(
				data['data'] != null ? DestinyCurrenciesComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCurrenciesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCurrenciesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}