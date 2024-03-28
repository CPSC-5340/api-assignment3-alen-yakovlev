//
//  ShowCharacters.swift
//  Assignment3
//
//  Created by Alen Yakovlev on 3/27/24.
//

import SwiftUI

struct ShowCharacters: View {
    var char : ShowModel
    //@ObservedObject var viewModel = CharacterViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                Text("Name: \(char.name)")
                Text("Status: \(char.status)")
                Text("Species: \(char.species)")
                Text("Gender: \(char.gender)")
                AsyncImage(url: URL(string: char.image ?? "https://www.freepnglogos.com/uploads/rick-and-morty-png/rick-and-morty-portal-shoes-white-clothing-zavvi-23.png"))
            }
        }
    }
}
