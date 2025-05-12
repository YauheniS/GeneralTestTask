import Foundation

// 1. Implement a simple client side searching functionality.

final class SearchEngine<T: Searchable> {
    var items: [T]
    
    init(items: [T]) {
        self.items = items
    }
    
    func search(term: String) -> [T] {
        // TODO: Check if the `term` applies to the `listItem.title`
        //return []
        
        guard !term.isEmpty else { return items }
        return items.filter { $0.searchableText.lowercased().contains(term.lowercased()) }
    }
}

