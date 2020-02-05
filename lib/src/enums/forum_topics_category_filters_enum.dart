class ForumTopicsCategoryFiltersEnum {
    const ForumTopicsCategoryFiltersEnum(this._value);
    factory ForumTopicsCategoryFiltersEnum.fromJson(int numValue) => ForumTopicsCategoryFiltersEnum(numValue);
    
    final int _value;
    
    ///None = 0
    static const ForumTopicsCategoryFiltersEnum None = ForumTopicsCategoryFiltersEnum(0);
    ///Links = 1
    static const ForumTopicsCategoryFiltersEnum Links = ForumTopicsCategoryFiltersEnum(1);
    ///Questions = 2
    static const ForumTopicsCategoryFiltersEnum Questions = ForumTopicsCategoryFiltersEnum(2);
    ///AnsweredQuestions = 4
    static const ForumTopicsCategoryFiltersEnum AnsweredQuestions = ForumTopicsCategoryFiltersEnum(4);
    ///Media = 8
    static const ForumTopicsCategoryFiltersEnum Media = ForumTopicsCategoryFiltersEnum(8);
    ///TextOnly = 16
    static const ForumTopicsCategoryFiltersEnum TextOnly = ForumTopicsCategoryFiltersEnum(16);
    ///Announcement = 32
    static const ForumTopicsCategoryFiltersEnum Announcement = ForumTopicsCategoryFiltersEnum(32);
    ///BungieOfficial = 64
    static const ForumTopicsCategoryFiltersEnum BungieOfficial = ForumTopicsCategoryFiltersEnum(64);
    ///Polls = 128
    static const ForumTopicsCategoryFiltersEnum Polls = ForumTopicsCategoryFiltersEnum(128);

    int get value {
        return _value;
    }

    bool contains(ForumTopicsCategoryFiltersEnum childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (ForumTopicsCategoryFiltersEnum item){
      return value & item.value;
    }

    @override
    bool operator == (dynamic other) {
        return other.value == value || other == value;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}