//
//  Round8View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 11.01.23.
//

import SwiftUI

struct Round8View: View {
    
    let regionOne: Region
    let regionTwo: Region
    
    var body: some View {
        HStack(spacing: 0){
            VStack (spacing: 0){
                RegionRound3View(region: regionOne)
              //  Rectangle()
              //      .frame(width: UIScreen.screenWidth/2, height: 5.0, alignment: .leading)
              //      .padding()
                RegionRound3View(region: regionTwo)
            }
        }.padding(0)
    }
}
