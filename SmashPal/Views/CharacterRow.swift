//
//  CharacterRow.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    
    var character: CharacterModel
    
    var body: some View {
        Text(character.name ?? "")
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        var character = MockCharacter()
        character.name = "Link"
        return CharacterRow(character: character)
    }
}

