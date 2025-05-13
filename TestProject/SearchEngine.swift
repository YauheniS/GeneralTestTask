import Foundation

final class SearchEngine<T: Searchable> {
    var items: [T]
    
    init(items: [T]) {
        self.items = items
    }
    
    func search(term: String) -> [T] {
        // TODO: Check if the `term` applies to the `listItem.title`
        return []
    }
}

