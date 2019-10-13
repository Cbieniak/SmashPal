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

@objc(CharacterNote)
public class CharacterNote: NSManagedObject, CharacterNoteModel, Identifiable {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CharacterNote> {
        return NSFetchRequest<CharacterNote>(entityName: "CharacterNote")
    }

    @NSManaged public var hero: Character?
    @NSManaged public var villan: Character?
    @NSManaged public var note: Note?

}

