import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'stream_info.g.dart';

@JsonSerializable()
class StreamInfo{	
	StreamInfo();

	
	@JsonKey(name:'ChannelName')
	String? channelName;

	factory StreamInfo.fromJson(Map<String, dynamic> json) {
		return _$StreamInfoFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$StreamInfoToJson(this);

	static Future<StreamInfo> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, StreamInfo>((json)=>StreamInfo.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}