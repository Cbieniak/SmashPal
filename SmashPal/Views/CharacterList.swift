//
//  CharacterList.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
        
    @FetchRequest(fetchRequest: Character.charFetchRequest(with: [NSSortDescriptor(keyPath: \Character.name, ascending: true)])) var characters

    var body: some View {
        List(characters, id: \.self, rowContent: { character in
            NavigationLink(destination: CharacterNoteList(characterNotes: (character.heroNotes.map({ Array($0) }) ?? []).compactMap { $0 as? CharacterNote })) {
                return CharacterRow(character: character)
            }
        })
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        return CharacterList()
    }
}

