//
//  CharacterModel.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import Foundation

protocol CharacterModel {
    var name: String? { get set }
    var dateCreated: Date? { get set }
    var dateUpdated: Date? { get set }
    var villianNotes: NSSet? { get set }
    var heroNotes: NSSet? { get set }
}
