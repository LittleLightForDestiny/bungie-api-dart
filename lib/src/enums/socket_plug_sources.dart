/// Indicates how a socket is populated, and where you should look for valid plug data.
///  This is a flags enumeration/bitmask field, as you may have to look in multiple sources across multiple components for valid plugs.
///  For instance, a socket could have plugs that are sourced from its own definition, as well as plugs that are sourced from Character-scoped AND profile-scoped Plug Sets. Only by combining plug data for every indicated source will you be able to know all of the plugs available for a socket.
class SocketPlugSources {
    const SocketPlugSources(this._value);
    factory SocketPlugSources.fromJson(int numValue) => SocketPlugSources(numValue);
    
    final int _value;
    
    ///None = 0
    /// If there's no way we can detect to insert new plugs.
    static const SocketPlugSources None = SocketPlugSources(0);
    ///InventorySourced = 1
    /// Use plugs found in the player's inventory, based on the socket type rules (see DestinySocketTypeDefinition for more info)
    /// Note that a socket - like Shaders - can have *both* reusable plugs and inventory items inserted theoretically.
    static const SocketPlugSources InventorySourced = SocketPlugSources(1);
    ///ReusablePlugItems = 2
    /// Use the DestinyItemSocketsComponent.sockets.reusablePlugs property to determine which plugs are valid for this socket. This may have to be combined with other sources, such as plug sets, if those flags are set.
    ///  Note that "Reusable" plugs may not necessarily come from a plug set, nor from the "reusablePlugItems" in the socket's Definition data. They can sometimes be "randomized" in which case the only source of truth at the moment is still the runtime DestinyItemSocketsComponent.sockets.reusablePlugs property.
    static const SocketPlugSources ReusablePlugItems = SocketPlugSources(2);
    ///ProfilePlugSet = 4
    /// Use the ProfilePlugSets (DestinyProfileResponse.profilePlugSets) component data to determine which plugs are valid for this socket.
    static const SocketPlugSources ProfilePlugSet = SocketPlugSources(4);
    ///CharacterPlugSet = 8
    /// Use the CharacterPlugSets (DestinyProfileResponse.characterPlugSets) component data to determine which plugs are valid for this socket.
    static const SocketPlugSources CharacterPlugSet = SocketPlugSources(8);

    int get value {
        return _value;
    }

    bool contains(SocketPlugSources childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (SocketPlugSources item){
      return value & item.value;
    }

    @override
    bool operator ==(Object other) {
        if(other is int){
            return other == value;
        }
        if(other is SocketPlugSources){
            return value == other.value;
        }
        return other == this;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}