import Foundation

let testData = [("S", 0), ("E", 1), ("A", 2), ("R", 3), ("C", 4), ("H", 5), ("E", 6), ("X", 7), ("A", 8), ("M", 9), ("P", 10), ("L", 11), ("E", 12)]
let sortedOutput = [("A", 8), ("C", 4), ("E", 12), ("H", 5), ("L", 11), ("M", 9), ("P", 10), ("R", 3), ("S", 0), ("X", 7)]

public class TestClientDummy {

    public init() {}

    public func runTest() {
        let symTab = DummyDictionary()

        for kv in testData {
            print("Key: ", kv.0, " Value: ", kv.1)
            symTab.put(key: kv.0, value: kv.1)
        }
        for k in symTab.keys() {
            print(k, symTab.get(key: k)!)
        }
    }
}
