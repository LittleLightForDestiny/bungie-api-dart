import 'destiny_item_quantity.dart';
class DestinyItemValueBlockDefinition{
	List<DestinyItemQuantity> itemValue;
	String valueDescription;
	DestinyItemValueBlockDefinition(
		List<DestinyItemQuantity> this.itemValue,
		String this.valueDescription,
	);

	static DestinyItemValueBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemValueBlockDefinition(
				DestinyItemQuantity.fromList(data['itemValue']),
				data['valueDescription'],
		);
	}

	static List<DestinyItemValueBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemValueBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemValueBlockDefinition.fromJson(item));
    });
    return list;
	}
}