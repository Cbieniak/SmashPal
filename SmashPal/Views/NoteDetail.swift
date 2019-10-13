//
//  NoteDetail.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct NoteDetail<T: NoteModel>: View {
    @ObservedObject var note: T
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var body: some View {
        return HStack {
            VStack {
                TitleView(heroName: note.characterNote?.hero?.name,
                          villianName: note.characterNote?.villan?.name)
                TextField("Details", text: $note.noteText) {
                    try? self.managedObjectContext.save()
                }.lineLimit(0)
                Spacer()
            }.padding()
        }
    }
}

struct NoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        let mockNote = MockNote()
        mockNote.noteText = "Test of data"
        mockNote.characterNote = MockCharacterNote(id: UUID().uuidString,
                                                   hero: MockCharacter(name: "Good guy"),
                                                   villan: MockCharacter(name: "Bad guy"))
        return NoteDetail(note: mockNote)
    }
}
