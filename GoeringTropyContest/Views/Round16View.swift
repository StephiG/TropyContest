//
//  Round16View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 30.11.22.
//

import SwiftUI

struct Round16View: View {
    
    let regionOne: Region
    let regionTwo: Region
    
    var body: some View {
        HStack(spacing: 0){
            VStack (spacing: 0){
                RegionRound2View(region: regionOne)
              //  Rectangle()
              //      .frame(width: UIScreen.screenWidth/2, height: 5.0, alignment: .leading)
              //      .padding()
                RegionRound2View(region: regionTwo)
            }
        }.padding(0)
    }
}
