//
//  CharacterNoteList.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct CharacterNoteList<T: CharacterModel, U: CharacterNoteModel>: View {
    var character: T
    var characterNotes: [U] {
        return (character.heroNotes.map({ Array($0) }) ?? []).compactMap { $0 as? U }
    }
    
    var body: some View {
        VStack {
            TitleView(heroName: character.name)
            List(characterNotes, rowContent: { characterNote in
                NavigationLink(destination: NoteDetail(note: characterNote.note!)) {
                    CharacterRow(character: characterNote.villan!)
                }
            })
        }
    }
    
}

struct CharacterNoteList_Previews: PreviewProvider {
    static var previews: some View {
        var mockHero = MockCharacter(name: "Hero")
        let mockVillian = MockCharacter(name: "Villian")
        let mockNote = MockNote()
        let mockCharacterNote = MockCharacterNote(id: UUID().uuidString, hero: mockHero, villan: mockVillian, note: mockNote)
        
        mockHero.heroNotes = NSSet(array: [mockCharacterNote])
        
        return CharacterNoteList<MockCharacter, MockCharacterNote>(character: mockHero)
    }
}
