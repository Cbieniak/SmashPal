//
//  CharacterNoteModel.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import Foundation

protocol CharacterNoteModel: Identifiable {
    associatedtype HeroType: CharacterModel
    associatedtype VillianType: CharacterModel
    associatedtype NoteType: NoteModel
    
    var hero: HeroType? { get set }
    var villan: VillianType? { get set }
    var note: NoteType? { get set }
}
