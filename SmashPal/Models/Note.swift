//
//  Note+CoreDataClass.swift
//  SmashPal
//
//  Created by ChristianBieniak on 10/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//
//

import Foundation
import CoreData

protocol NoteModel: ObservableObject {
    associatedtype CharacterNoteType: CharacterNoteModel
    
    var noteText: String { get set }
    var dateCreated: Date? { get set }
    var dateUpdated: Date? { get set }
    var characterNote: CharacterNoteType? { get set }
}

@objc(Note)
public class Note: NSManagedObject, NoteModel {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var noteText: String
    @NSManaged public var dateCreated: Date?
    @NSManaged public var dateUpdated: Date?
    @NSManaged public var characterNote: CharacterNote?
}

public class MockNote: NoteModel, ObservableObject {
    
    var noteText: String = ""
    
    var dateCreated: Date?
    
    var dateUpdated: Date?
    
    var characterNote: MockCharacterNote?
}


