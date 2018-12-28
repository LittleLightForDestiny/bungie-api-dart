import 'interpolation_point.dart';

/* Describes the way that an Item Stat (see DestinyStatDefinition) is transformed using the DestinyStatGroupDefinition related to that item. See both of the aforementioned definitions for more information about the stages of stat transformation.
This represents the transformation of a stat into a "Display" stat (the closest value that BNet can get to the in-game display value of the stat) */
class DestinyStatDisplayDefinition{
	
	/* The hash identifier for the stat being transformed into a Display stat.
Use it to look up the DestinyStatDefinition, or key into a DestinyInventoryItemDefinition's stats property. */
	int statHash;
	
	/* Regardless of the output of interpolation, this is the maximum possible value that the stat can be. It should also be used as the upper bound for displaying the stat as a progress bar (the minimum always being 0) */
	int maximumValue;
	
	/* If this is true, the stat should be displayed as a number. Otherwise, display it as a progress bar. Or, you know, do whatever you want. There's no displayAsNumeric police. */
	bool displayAsNumeric;
	
	/* The interpolation table representing how the Investment Stat is transformed into a Display Stat. 
See DestinyStatDefinition for a description of the stages of stat transformation. */
	List<InterpolationPoint> displayInterpolation;
	DestinyStatDisplayDefinition(
		this.statHash,
		this.maximumValue,
		this.displayAsNumeric,
		this.displayInterpolation,
	);

	static DestinyStatDisplayDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatDisplayDefinition(
				data['statHash'],
				data['maximumValue'],
				data['displayAsNumeric'],
				data['displayInterpolation'] != null ? InterpolationPoint.fromList(data['displayInterpolation']) : null,
		);
	}

	static List<DestinyStatDisplayDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatDisplayDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatDisplayDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statHash'] = this.statHash;
			data['maximumValue'] = this.maximumValue;
			data['displayAsNumeric'] = this.displayAsNumeric;
			data['displayInterpolation'] = this.displayInterpolation.map((item)=>item.toMap()).toList();
		return data;
	}
}