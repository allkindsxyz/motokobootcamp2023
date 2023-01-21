import List "mo:base/List";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Bool "mo:base/Bool";
import HashMap "mo:base/HashMap";
import Buffer "mo:base/Buffer";

module Helpers {

//Challenge 1
    public func unique<T> (l : List.List<T>) : List.List<T>{
        
        let array  = List.toArray(l);
        var newlist : List.List<T> = List.nil();
    
        func eq_func (a : T) : Bool {
            return a == a;
        };
            
            for (element in array.vals()){
            if (List.some<T>(newList, eq_func)) {
            
            } else {
                newList.add(element)
                };
        };
        return newList;
    };
    
    
//Challenge 2
    public func reverse<T> (l : List.List<T>) : List.List<T>{
    return List.reverse<T>(l);
    };

//Challenge 3
    public shared ({caller}) func is_anynomous () : async Bool {
        
        return Principal.isAnonymous(caller);

    };
};

actor {
    let usernames : HashMap.HashMap<Principal, Text> = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
        
    public func get_usernames () : async [(Principal, Text)]{

        let userNamesResult : [(Principal, Text)] = Iter.toArray(usernames.entries());
        return userNamesResult;
    };

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };


    func eq_func2 (a : T, b : T) : Bool {
            return a == b;};

    func find_in_buffer<T> (buf: Buffer.Buffer<T>, val: T, eq_func) : Bool {


        return true;
    };

}