import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ChallengeViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter search term...", text: $viewModel.searchTerm)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Search") {
                    viewModel.searchAttractions()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)

                List(viewModel.filteredList, id: \.id) { attraction in
                    VStack(alignment: .leading) {
                        Text(attraction.title)
                            .font(.headline)
                        Text(attraction.country)
                            .font(.subheadline)
                    }
                }
            }
            .navigationBarTitle("Attraction Search")
        }
    }
}
