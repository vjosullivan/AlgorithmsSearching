import Foundation

public protocol OrderedSymbolTable: SymbolTable {

    func min() -> Key
    func max() -> Key
    func floor(key: Key) -> Key?
    func ceiling(key: Key) -> Key?
    func rank(key: Key) -> Int
    func select(rank: Int) -> Key?
    func deleteMin()
    func deleteMax()

    func size(lowKey: Key, highKey: Key) -> Int
    func keys(lowKey: Key, highKey: Key) -> [Key]
}

