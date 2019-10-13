//
//  TitleView.swift
//  SmashPal
//
//  Created by ChristianBieniak on 13/10/19.
//  Copyright © 2019 BienThere. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    
    var heroName: String?
    
    var villianName: String?
    
    var body: some View {
        return VStack {
            HStack {
                Text(heroName ?? "?").font(.largeTitle)
            }
            HStack {
                Text("VS").foregroundColor(.gray)
            }
            HStack {
                Text(villianName ?? "?").font(.largeTitle)
            }
            
        }.padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TitleView()
            TitleView(heroName: "Test", villianName: "Loser")
        }
    }
}

