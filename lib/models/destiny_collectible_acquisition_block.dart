class DestinyCollectibleAcquisitionBlock{
	int acquireMaterialRequirementHash;
	int acquireTimestampUnlockValueHash;
	DestinyCollectibleAcquisitionBlock(
		int this.acquireMaterialRequirementHash,
		int this.acquireTimestampUnlockValueHash,
	);

	static DestinyCollectibleAcquisitionBlock fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleAcquisitionBlock(
				data['acquireMaterialRequirementHash'],
				data['acquireTimestampUnlockValueHash'],
		);
	}

	static List<DestinyCollectibleAcquisitionBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleAcquisitionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleAcquisitionBlock.fromJson(item));
    });
    return list;
	}
}