import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'image_pyramid_entry.g.dart';

@JsonSerializable()
class ImagePyramidEntry{	
	ImagePyramidEntry();

	
	/// The name of the subfolder where these images are located.
	@JsonKey(name:'name')
	String? name;
	
	/// The factor by which the original image size has been reduced.
	@JsonKey(name:'factor')
	double? factor;

	factory ImagePyramidEntry.fromJson(Map<String, dynamic> json) {
		return _$ImagePyramidEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ImagePyramidEntryToJson(this);

	static Future<ImagePyramidEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ImagePyramidEntry>((json)=>ImagePyramidEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}