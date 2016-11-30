import Foundation

public protocol SymbolTable {

    associatedtype Key: Comparable
    associatedtype Value

    init()
    func put(key: Key, value: Value)
    func get(key: Key) -> Value?
    func delete(key: Key)
    func contains(key: Key) -> Bool
    func isEmpty() -> Bool
    func size() -> Int
    func keys() -> [Key]
}
