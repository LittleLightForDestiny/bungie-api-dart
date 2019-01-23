
/** Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item. */
class DestinyItemRenderComponent{
	
	/** If you should use custom dyes on this item, it will be indicated here. */
	bool useCustomDyes;
	
	/** A dictionary for rendering gear components, with:
key = Art Arrangement Region Index
value = The chosen Arrangement Index for the Region, based on the value of a stat on the item used for making the choice. */
	Map<String, int> artRegions;
	DestinyItemRenderComponent(
		this.useCustomDyes,
		this.artRegions,
	);

	static DestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemRenderComponent(
				data['useCustomDyes'],
				data['artRegions'] != null ? Map<String, int>.from(data['artRegions'].map((k, v)=>MapEntry(k, v))) : null,
		);
	}

	static List<DestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['useCustomDyes'] = this.useCustomDyes;
			data['artRegions'] = this.artRegions != null? this.artRegions.map((i, v)=>MapEntry(i, v)) : null;
		return data;
	}
}