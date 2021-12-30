import 'package:json_annotation/json_annotation.dart';


part 'stream_info.g.dart';

@JsonSerializable()
class StreamInfo{	
	StreamInfo();

	factory StreamInfo.fromJson(Map<String, dynamic> json) {
		return _$StreamInfoFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$StreamInfoToJson(this);
	
	@JsonKey(name:'ChannelName')
	String? channelName;
}