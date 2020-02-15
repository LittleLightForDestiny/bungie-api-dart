import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_render_component.g.dart';

/// Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item.
@JsonSerializable()
class DestinyItemRenderComponent{
	
	DestinyItemRenderComponent();

	factory DestinyItemRenderComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemRenderComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// If you should use custom dyes on this item, it will be indicated here.
	@JsonKey(name:'useCustomDyes')
	bool useCustomDyes;
	/// A dictionary for rendering gear components, with:
	/// key = Art Arrangement Region Index
	/// value = The chosen Arrangement Index for the Region, based on the value of a stat on the item used for making the choice.
	@JsonKey(name:'artRegions')
	Map<String, int> artRegions;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemRenderComponentToJson(this);
}