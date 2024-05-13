import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank {
  var currentValue = 300;
  currentValue := 1000;

  // Debug.print(debug_show (currentValue))
  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Insufficient Fund");
    };
  };
  public query func checkBalance() : async Nat {
    return currentValue

  };
  hellow;
};
