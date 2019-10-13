//
//  MockCharacterNote.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import Foundation

struct MockCharacterNote: CharacterNoteModel {
    var id: String
    
    var hero: MockCharacter?
    
    var villan: MockCharacter?
    
    var note: MockNote?

}
