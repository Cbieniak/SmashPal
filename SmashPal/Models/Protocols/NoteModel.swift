//
//  NoteModel.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import Foundation

protocol NoteModel: ObservableObject {
    associatedtype CharacterNoteType: CharacterNoteModel
    
    var noteText: String { get set }
    var dateCreated: Date? { get set }
    var dateUpdated: Date? { get set }
    var characterNote: CharacterNoteType? { get set }
}
