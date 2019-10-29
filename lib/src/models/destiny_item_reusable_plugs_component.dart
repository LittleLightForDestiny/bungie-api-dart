import 'destiny_item_plug_base.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DestinyItemReusablePlugsComponent{
	
	/// If the item supports reusable plugs, this is the list of plugs that are allowed to be used for the socket, and any relevant information about whether they are &quot;enabled&quot;, whether they are allowed to be inserted, and any other information such as objectives.
	///  A Reusable Plug is a plug that you can always insert into this socket as long as its insertion rules are passed, regardless of whether or not you have the plug in your inventory. An example of it failing an insertion rule would be if it has an Objective that needs to be completed before it can be inserted, and that objective hasn&#39;t been completed yet.
	///  In practice, a socket will *either* have reusable plugs *or* it will allow for plugs in your inventory to be inserted. See DestinyInventoryItemDefinition.socket for more info.
	///  KEY &#x3D; The INDEX into the item&#39;s list of sockets. VALUE &#x3D; The set of plugs for that socket.
	///  If a socket doesn&#39;t have any reusable plugs defined at the item scope, there will be no entry for that socket.
	@JsonKey(name:'plugs')
	Map<String, List<DestinyItemPlugBase>> plugs;
	DestinyItemReusablePlugsComponent();

	factory DestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$DestinyItemReusablePlugsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemReusablePlugsComponentToJson(this);
}