//
//  Character+CoreDataClass.swift
//  SmashPal
//
//  Created by ChristianBieniak on 10/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Character)
public class Character: NSManagedObject, CharacterModel {
    
    @nonobjc public class func charFetchRequest(with sortDescriptors: [NSSortDescriptor]) -> NSFetchRequest<Character> {
        let fr = NSFetchRequest<Character>(entityName: "Character")
        fr.sortDescriptors = sortDescriptors
        return fr
    }

    @NSManaged public var name: String?
    @NSManaged public var dateCreated: Date?
    @NSManaged public var dateUpdated: Date?
    @NSManaged public var villianNotes: NSSet?
    @NSManaged public var heroNotes: NSSet?

}

// MARK: Generated accessors for villianNotes
extension Character {

    @objc(addVillianNotesObject:)
    @NSManaged public func addToVillianNotes(_ value: CharacterNote)

    @objc(removeVillianNotesObject:)
    @NSManaged public func removeFromVillianNotes(_ value: CharacterNote)

    @objc(addVillianNotes:)
    @NSManaged public func addToVillianNotes(_ values: NSSet)

    @objc(removeVillianNotes:)
    @NSManaged public func removeFromVillianNotes(_ values: NSSet)

}

// MARK: Generated accessors for heroNotes
extension Character {

    @objc(addHeroNotesObject:)
    @NSManaged public func addToHeroNotes(_ value: CharacterNote)

    @objc(removeHeroNotesObject:)
    @NSManaged public func removeFromHeroNotes(_ value: CharacterNote)

    @objc(addHeroNotes:)
    @NSManaged public func addToHeroNotes(_ values: NSSet)

    @objc(removeHeroNotes:)
    @NSManaged public func removeFromHeroNotes(_ values: NSSet)

}

extension Character: Identifiable {}
