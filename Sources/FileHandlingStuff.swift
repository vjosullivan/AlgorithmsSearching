import Foundation

public enum FileError: Error {
    case noSuchFileURL(msg: String)
}

public func contents(of filename: String) throws -> String {

    let resource = filename.components(separatedBy: ".")[0]
    let ext      = filename.components(separatedBy: ".")[1]
    if let fileURL = Bundle.main.url(forResource: resource, withExtension: ext) {
        do {
            let content = try String(contentsOf: fileURL, encoding: String.Encoding.utf8)
            return content
        } catch {
            throw(error)
        }
    } else {
        throw(FileError.noSuchFileURL(msg: "File '\(filename)' not found."))
    }
}

public func fileContents(of filename: String) -> String {
    let resource = filename.components(separatedBy: ".")[0]
    let ext      = filename.components(separatedBy: ".")[1]
    let fileURL  = Bundle.main.url(forResource: resource, withExtension: ext)!
    return(try! String(contentsOf: fileURL, encoding: String.Encoding.utf8))
}
