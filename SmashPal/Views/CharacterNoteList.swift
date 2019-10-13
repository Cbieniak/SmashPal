//
//  CharacterNoteList.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct CharacterNoteList<T: CharacterNoteModel>: View {
    var characterNotes: [T] = []
    
    var body: some View {
        List(characterNotes, rowContent: { characterNote in
            NavigationLink(destination: NoteDetail(note: characterNote.note!)) {
                CharacterRow(character: characterNote.villan!)
            }.navigationBarTitle(characterNote.hero?.name ?? "")
        })
    }
    
}

struct CharacterNoteList_Previews: PreviewProvider {
    static var previews: some View {
        let mockHero = MockCharacter(name: "Hero")
        let mockVillian = MockCharacter(name: "Villian")
        let mockNote = MockNote()
        let mockCharacterNote = MockCharacterNote(id: UUID().uuidString, hero: mockHero, villan: mockVillian, note: mockNote)
        
        return CharacterNoteList(characterNotes: [mockCharacterNote])
    }
}
