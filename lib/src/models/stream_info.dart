import 'package:json_annotation/json_annotation.dart';


part 'stream_info.g.dart';

@JsonSerializable()
class StreamInfo{
	
	StreamInfo();

	factory StreamInfo.fromJson(Map<String, dynamic> json) => _$StreamInfoFromJson(json);

	@JsonKey(name:'ChannelName')
	String channelName;

	
	
	Map<String, dynamic> toJson() => _$StreamInfoToJson(this);
}