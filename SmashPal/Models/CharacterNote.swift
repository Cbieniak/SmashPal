//
//  CharacterNote+CoreDataClass.swift
//  SmashPal
//
//  Created by ChristianBieniak on 10/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//
//

import Foundation
import CoreData

protocol CharacterNoteModel: Identifiable {
    associatedtype HeroType: CharacterModel
    associatedtype VillianType: CharacterModel
    associatedtype NoteType: NoteModel
    
    var hero: HeroType? { get set }
    var villan: VillianType? { get set }
    var note: NoteType? { get set }
}

@objc(CharacterNote)
public class CharacterNote: NSManagedObject, CharacterNoteModel {
}

extension CharacterNote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CharacterNote> {
        return NSFetchRequest<CharacterNote>(entityName: "CharacterNote")
    }

    @NSManaged public var hero: Character?
    @NSManaged public var villan: Character?
    @NSManaged public var note: Note?

}

extension CharacterNote: Identifiable {}


struct MockCharacterNote: CharacterNoteModel {
    var id: String
    
    var hero: MockCharacter?
    
    var villan: MockCharacter?
    
    var note: MockNote?

}
