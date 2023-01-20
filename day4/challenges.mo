import List "mo:base/List";


module Helpers {

    public func reverse<T> (l : List.List<T>) : List.List<T>{
    return List.reverse<T>(l);
    };

}