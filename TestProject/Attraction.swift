protocol Searchable {
    var searchableText: String { get }
}

struct Attraction: Identifiable, Searchable {
    let title: String
    let country: String
    let id: Int
    
    var searchableText: String {
        return title
    }
}
