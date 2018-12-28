import 'destiny_position_definition.dart';

/** These Art Elements are meant to represent one-off visual effects overlaid on the map. Currently, we do not have a pipeline to import the assets for these overlays, so this info exists as a placeholder for when such a pipeline exists (if it ever will) */
class DestinyActivityGraphArtElementDefinition{
	
	/** The position on the map of the art element. */
	DestinyPositionDefinition position;
	DestinyActivityGraphArtElementDefinition(
		this.position,
	);

	static DestinyActivityGraphArtElementDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphArtElementDefinition(
				data['position'] != null ? DestinyPositionDefinition.fromMap(data['position']) : null,
		);
	}

	static List<DestinyActivityGraphArtElementDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphArtElementDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphArtElementDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['position'] = this.position;
		return data;
	}
}