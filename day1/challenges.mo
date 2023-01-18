actor {

//Challenge #1
public func multiply (n : Nat, m : Nat) : async Nat{
    return n * m;
};

//Challenge #2
public func volume (n : Nat) : async Nat{
    return n ** 3;
};

//Challenge #3
public func hours_to_minutes (n : Nat) : async Nat{
    return n * 60;
};


//Challenge #4
var counter : Nat = 0;

public func set_counter (n : Nat) : async () {
    counter :=n;
};

public query func get_counter () : async Nat {
    return counter;
};

//Challenge #5
public func test_devide (n : Nat, m : Nat) : async Bool {
    return if (n % m > 0){
        false;
        } else {
            true;
            };
    };

//Challenge 6
    public query func is_even (n : Nat) : async Bool {
        return if (n % 2 > 0) {
          false;
        } else {
          true;
          };
    };


}
