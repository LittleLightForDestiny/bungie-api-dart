
/**  */
class ImagePyramidEntry{
	
	/** The name of the subfolder where these images are located. */
	String name;
	
	/** The factor by which the original image size has been reduced. */
	double factor;
	ImagePyramidEntry(
		this.name,
		this.factor,
	);

	static ImagePyramidEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ImagePyramidEntry(
				data['name'],
				data['factor'],
		);
	}

	static List<ImagePyramidEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ImagePyramidEntry> list = new List();
    data.forEach((item) {
      list.add(ImagePyramidEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
			data['factor'] = this.factor;
		return data;
	}
}