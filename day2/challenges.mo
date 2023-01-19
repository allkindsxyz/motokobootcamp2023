import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Debug "mo:base/Debug";

actor {
    
 //Challenge 1
    public query func average_array (array : [Int]) : async Int {
        var sum : Int = 0;

        for (element in array.vals()){
        sum := element;
        };
        return sum / array.size();
    };

        //but also discovered this:
        //return Array.foldLeft<Int, Int>(array, 0, Int.add) / array.size;

//Challenge 2
    public query func count_character(t : Text, c : Char) : async Nat{
        var counter : Nat = 0;

        for (element in t.chars()){
            if (element == c) {
                counter += 1;
                };
        };
        return counter;

    };

//Challenge 3
    public query func factorial(n : Nat) : async  Nat{
        
       var result : Nat = 1;

        for(i in Iter.range(1, n)){
                    result := result * i;
                };
        return result;
        
    };

//Challenge 4
    public query func number_of_words(t : Text) : async Nat {
        
        //This code doesn't handle the case when spaces go in a row. need to get back to it
        return Iter.size(Text.split(t, #char(' ')));
    };

//Challenge 5
      public query func find_duplicates(a : [Nat]) : async [Nat] { 
        var result : [Nat] = [];
      for (n in a.vals()) {
          let duplicates : [Nat] = Array.filter<Nat>(a, func (x: Nat) : Bool {x == n});
          if(duplicates.size() > 1) {
            result := Array.append(result, [n]);
          };
      };
      return result;
     };

//Challenge 6
     public func convert_to_binary(n : Nat) : async Text {
        var result = 0;
        var m = n;
        var l = 1;
        while(m > 0) {
         let base = m % 2;
        result += base * l;
        m /= 2;
        m *= 10;
        };
        return Nat.toText(result);
     };
        
    
}