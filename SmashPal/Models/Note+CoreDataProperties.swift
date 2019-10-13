//
//  Note+CoreDataProperties.swift
//  SmashPal
//
//  Created by ChristianBieniak on 10/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var noteText: String
    @NSManaged public var dateCreated: Date?
    @NSManaged public var dateUpdated: Date?
    @NSManaged public var characterNote: CharacterNote?

}
