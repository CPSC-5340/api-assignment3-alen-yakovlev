//
//  CharactersMain.swift
//  Assignment3
//
//  Created by Alen Yakovlev on 3/27/24.
//

import SwiftUI

struct CharactersMain: View {
    @ObservedObject var charsvm = CharacterViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(charsvm.charData) { char in
                    NavigationLink {
                        ShowCharacters(char: char)
                    } label: {
                        Text(char.name)
                    }
                }
            }
            .onAppear {
                charsvm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Rick & Morty: Ricks")
        }
        
    }
}

#Preview {
    CharactersMain()
}
