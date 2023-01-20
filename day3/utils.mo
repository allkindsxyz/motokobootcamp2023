import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";
import Option "mo:base/Option";


actor {
    
//Challenge 1
    public func second_maximum(array : [Int]) :  async Int{

    let sorted_array : [Int] = Array.sort(array, Int.compare);

    //remove the same numbers  
    let buffer = Buffer.Buffer<Int>(1);

    func eq_func (a : Int, b : Int) : Bool {
        return a == b
    };

    for (element in sorted_array.vals()){
        if (Buffer.contains(buffer, element, eq_func)) {
            
            } else {
                buffer.add(element)
                };
        };
    
    return buffer.get(buffer.size()-2);
    };


//Challenge 2
    public func remove_even(array : [Nat]) : async [Nat] {
        
        return Array.filter<Nat>(array, func x = x % 2 != 0);
    };


//Challenge 3

    public func dropn<T>(xs : [T], n : Nat) : async [T] {
    return Array.tabulate<T>(
      xs.size() - n, 
      func i = xs[i + n]
      );

    };
}