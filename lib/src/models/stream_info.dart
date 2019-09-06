
import 'package:json_annotation/json_annotation.dart';
part 'stream_info.g.dart';

@JsonSerializable()
class StreamInfo {

	@JsonKey(name:'ChannelName')
	String channelName;
	StreamInfo();

	factory StreamInfo.fromJson(Map<String, dynamic> json) => _$StreamInfoFromJson(json);
	
	Map<String, dynamic> toJson() => _$StreamInfoToJson(this);
}
