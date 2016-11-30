import Foundation

public class DummyDictionary: OrderedSymbolTable {

    public required init(){}

    public func put(key: String, value: Int) {}
    public func get(key: String) -> Int? { return 99 }
    public func delete(key: String) {}
    public func contains(key: String) -> Bool { return get(key: key) != nil }
    public func isEmpty() -> Bool { return size() == 0 }
    public func size() -> Int { return 0 }
    public func keys() -> [String] { return ["A", "B"] }

    public func min() -> String { return "X" }
    public func max() -> String { return "X" }
    public func floor(key: String) -> String? { return "X" }
    public func ceiling(key: String) -> String? { return "X" }
    public func rank(key: String) -> Int { return 0 }
    public func select(rank: Int) -> String? { return "X" }
    public func deleteMin() { delete(key: min()) }
    public func deleteMax() { delete(key: max()) }

    public func size(lowKey: String, highKey: String) -> Int { return 0 }
    public func keys(lowKey: String, highKey: String) -> [String] { return ["Y", "Z"] }
}
