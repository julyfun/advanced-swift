
struct S {
    init() {
        self.obj = [String:String]()
    }
    var obj: [String: String] {
        willSet {
            print("willset")
        }
        didSet {
            print("didset")
        }
    
    }
}
var s = S()
s.obj["123"] = "1"
