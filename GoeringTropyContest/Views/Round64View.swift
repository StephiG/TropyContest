//
//  Round64View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct Round64View: View {
    
    let regionOne: Region
    let regionTwo: Region
    
    var body: some View {
        HStack{
            VStack { 
                RegionRound1View(region: regionOne)
                Rectangle()
                    .frame(width: UIScreen.screenWidth, height: 5.0, alignment: .leading)
                    .padding()
                RegionRound1View(region: regionTwo)
            }
        }
    }
}

