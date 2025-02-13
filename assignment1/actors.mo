actor SimpleContract {

    // State variables
    private var data: Text = "";
    private var counter: Nat = 0;

    // Function to set data
    public shared(msg) func setData(newData: Text) : async () {
        data := newData;
    };

    // Function to get data
    public query func getData() : async Text {
        return data;
    };

    // Function to increment the counter
    public shared(msg) func incrementCounter() : async () {
        counter += 1;
    };

    // Function to get the current counter value
    public query func getCounter() : async Nat {
        return counter;
    };
}
