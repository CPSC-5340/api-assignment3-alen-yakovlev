//
//  CharecterViewModel.swift
//  Assignment3
//
//  Created by Alen Yakovlev on 3/27/24.
//

import Foundation

class CharacterViewModel: ObservableObject {

    @Published private(set) var charData = [ShowModel]()
    
    private let url = "https://rickandmortyapi.com/api/character/?name=rick"
    
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print(error)
                        
                    } else {
                        if let data = data {
                            do {
                                let final = try JSONDecoder().decode(Characters.self, from: data)
                                self.charData = final.results
                            } catch {
                                print(error)
                            }
                        }
                    }
                    
                }.resume()
        }
    }
}
