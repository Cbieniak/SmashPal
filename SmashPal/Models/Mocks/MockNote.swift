//
//  MockNote.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import Foundation

public class MockNote: NoteModel, ObservableObject {
    
    var noteText: String = ""
    
    var dateCreated: Date?
    
    var dateUpdated: Date?
    
    var characterNote: MockCharacterNote?
}
