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
                TextField("Details", text: $note.noteText) {
                    try? self.managedObjectContext.save()
                }.lineLimit(0)
                Spacer()
            }.padding(8)
        }.navigationBarTitle("Against \(note.characterNote?.villan?.name ?? "")")
    }
}

struct NoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetail(note: MockNote())
    }
}
