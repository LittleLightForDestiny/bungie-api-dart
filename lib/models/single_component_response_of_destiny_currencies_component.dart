import 'destiny_currencies_component.dart';
class SingleComponentResponseOfDestinyCurrenciesComponent{
	DestinyCurrenciesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCurrenciesComponent(
		DestinyCurrenciesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCurrenciesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCurrenciesComponent(
				DestinyCurrenciesComponent.fromMap(data['data']),
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
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}