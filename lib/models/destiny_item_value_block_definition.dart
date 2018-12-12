import 'destiny_item_quantity.dart';
class DestinyItemValueBlockDefinition{
	List<DestinyItemQuantity> itemValue;
	String valueDescription;
	DestinyItemValueBlockDefinition(
		List<DestinyItemQuantity> this.itemValue,
		String this.valueDescription,
	);

	static DestinyItemValueBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemValueBlockDefinition(
				DestinyItemQuantity.fromList(data['itemValue']),
				data['valueDescription'],
		);
	}

	static List<DestinyItemValueBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemValueBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemValueBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemValue'] = this.itemValue.map((item)=>item.toMap()).toList();
			data['valueDescription'] = this.valueDescription;
		return data;
	}
}