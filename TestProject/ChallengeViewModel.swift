import Foundation
import SwiftUI

final class ChallengeViewModel: ObservableObject  {
    @Published var searchTerm: String = ""
    @Published var filteredList: [Attraction] = []
    
    static let list: [Attraction] = [
        Attraction(title: "Hallstatt", country: "Austria", id: 0),
        Attraction(title: "Haveby", country: "Denmark", id: 1),
        Attraction(title: "Iseltwald", country: "Switzerland", id: 2),
        Attraction(title: "Salzkammergut", country: "Austria", id: 3),
        Attraction(title: "Lauterbrunnen", country: "Switzerland", id: 4),
        Attraction(title: "Nida", country: "Lithuania", id: 5)
    ]
    
    private let searchEngine: SearchEngine<Attraction>

    init() {
        searchEngine = SearchEngine(items: Self.list)
    }

    func searchAttractions() {
        filteredList = searchEngine.search(term: searchTerm)
    }
}
