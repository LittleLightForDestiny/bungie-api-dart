
import 'package:json_annotation/json_annotation.dart';
part 'image_pyramid_entry.g.dart';

@JsonSerializable()
class ImagePyramidEntry {

	/// The name of the subfolder where these images are located.
	@JsonKey(name:'name')
	String name;

	/// The factor by which the original image size has been reduced.
	@JsonKey(name:'factor')
	double factor;
	ImagePyramidEntry();

	factory ImagePyramidEntry.fromJson(Map<String, dynamic> json) => _$ImagePyramidEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$ImagePyramidEntryToJson(this);
}
