//
//  MovieViewModel.swift
//  NetworkCall
//
//  Created by Vincent on 27/07/2023.
//

import Combine
import Foundation

//class DataStore {
//    var movies: [Movie] = []
//}

final class MovieViewModel: ObservableObject {
    @Published private var upcomingMovies: [Movie] = []
    @Published var searchQuery: String = ""
    @Published private var searchResults: [Movie] = []
    
//    let dataStore = DataStore()
    
    var movies: [Movie] {
        if searchQuery.isEmpty {
            return upcomingMovies
        } else {
            return searchResults
        }
    }
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        $searchQuery
            .debounce(for: 0.3, scheduler: DispatchQueue.main)
//            .flatMap { searchQuery in
//                searchMovies(for: searchQuery)
//                    .replaceError(with: MovieResponse(results: []))
//            }
            .map { searchQuery in
                searchMovies(for: searchQuery)
                    .replaceError(with: MovieResponse(results: []))
            }
            .switchToLatest()
            .map(\.results)
            .receive(on: DispatchQueue.main)
            .assign(to: &$searchResults)
    }
    
    func fetchInitialData() {
        fetchMovies()
            .map(\.results)
            .subscribe(on: DispatchQueue.global(qos: .background)) /// The thread of `URLSession`  (the code that produce result)
            .receive(on: DispatchQueue.main) /// The thread of `sink`
//            .sink { completion in
//                switch completion {
//                case .finished:()
//                case .failure(let failure):
//                    print(failure.localizedDescription)
//                }
//            } receiveValue: { [dataStore] movies in
//                dataStore.movies = movies
//            }
//            .replace!Error(with: [])
            .catch({ error in
                print(error.localizedDescription)
                return Just(Array<Movie>())
            })
//            .assign(to: \.movies, on: dataStore)
            .assign(to: &$upcomingMovies)
    }
    
    
}
