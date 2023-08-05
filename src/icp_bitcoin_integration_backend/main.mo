import Time "mo:base/Time";
import Result "mo:base/Result";
import Int "mo:base/Int";
actor {
  let cookies = [

  ];

  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  public func getCookie() : async Result.Result<Text, Text> {
    return #ok(" :" # cookies[Int.abs(Time.now() / 1000 % 50)]);
  }
};
