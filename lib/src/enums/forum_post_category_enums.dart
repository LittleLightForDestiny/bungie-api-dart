class ForumPostCategoryEnums {
    const ForumPostCategoryEnums(this._value);
    factory ForumPostCategoryEnums.fromJson(int numValue) => ForumPostCategoryEnums(numValue);
    
    final int _value;
    
    ///None = 0
    static const ForumPostCategoryEnums None = ForumPostCategoryEnums(0);
    ///TextOnly = 1
    static const ForumPostCategoryEnums TextOnly = ForumPostCategoryEnums(1);
    ///Media = 2
    static const ForumPostCategoryEnums Media = ForumPostCategoryEnums(2);
    ///Link = 4
    static const ForumPostCategoryEnums Link = ForumPostCategoryEnums(4);
    ///Poll = 8
    static const ForumPostCategoryEnums Poll = ForumPostCategoryEnums(8);
    ///Question = 16
    static const ForumPostCategoryEnums Question = ForumPostCategoryEnums(16);
    ///Answered = 32
    static const ForumPostCategoryEnums Answered = ForumPostCategoryEnums(32);
    ///Announcement = 64
    static const ForumPostCategoryEnums Announcement = ForumPostCategoryEnums(64);
    ///ContentComment = 128
    static const ForumPostCategoryEnums ContentComment = ForumPostCategoryEnums(128);
    ///BungieOfficial = 256
    static const ForumPostCategoryEnums BungieOfficial = ForumPostCategoryEnums(256);
    ///NinjaOfficial = 512
    static const ForumPostCategoryEnums NinjaOfficial = ForumPostCategoryEnums(512);
    ///Recruitment = 1024
    static const ForumPostCategoryEnums Recruitment = ForumPostCategoryEnums(1024);

    int get value {
        return _value;
    }

    bool contains(ForumPostCategoryEnums childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (ForumPostCategoryEnums item){
      return value & item.value;
    }

    @override
    bool operator ==(dynamic other) {
        if(other is int){
            return other == value;
        }
        try{
        return value == other.value;
        }catch(e){
            return other == this;
        }
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}