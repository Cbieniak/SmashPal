//
//  ContentView.swift
//  SmashPal
//
//  Created by ChristianBieniak on 10/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var body: some View {
        
        let fr = Character.charFetchRequest()
        let result = try? managedObjectContext.fetch(fr)
        let characters = result ?? []
        return NavigationView {
            CharacterList(characters: characters)
        }.navigationBarTitle(Text("Heroes"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList(characters: [])
    }
}

struct CharacterRow: View {
    
    var character: Character
    
    var body: some View {
        Text(character.name ?? "Mil")
    }
}


struct CharacterList: View {
        
    var characters: [Character]

    var body: some View {
        List(characters, rowContent: { character in
            NavigationLink(destination: CharacterNoteList(characterNotes: (character.heroNotes.map({ Array($0) }) ?? []).compactMap { $0 as? CharacterNote })) {
                return CharacterRow(character: character)
            }
        })
    }
}


struct CharacterNoteList: View {
    var characterNotes: [CharacterNote] = []
    
    var body: some View {
        List(characterNotes, rowContent: { characterNote in
            NavigationLink(destination: NoteDetail(note: characterNote.note!)) {
                CharacterRow(character: characterNote.villan!)
            }
        })
    }
    
}


struct NoteDetail: View {
    @ObservedObject var note: Note
    
    @Environment(\.managedObjectContext) var managedObjectContext

    init(note: Note) {
        self.note = note
    }
    
    var body: some View {
        return HStack {
            VStack {
                Text("Against").font(.body).foregroundColor(.gray)
                Text(note.characterNote?.villan?.name ?? "No Name").font(.largeTitle)
                TextField("Details", text: $note.noteText) {
                    try? self.managedObjectContext.save()
                }.lineLimit(0)
                Spacer()
            }.padding(8)
        }.navigationBarTitle(note.characterNote?.hero?.name ?? "No Name")
    }
}

