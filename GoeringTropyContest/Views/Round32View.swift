//
//  Round32View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 23.11.22.
//

import SwiftUI

struct Round32View: View {
    
    let regionOne: Region
    let regionTwo: Region
    
    var body: some View {
        HStack{
            VStack (spacing: 0){
                RegionRound1View(region: regionOne)
                Rectangle()
                    .frame(width: UIScreen.screenWidth/2, height: 5.0, alignment: .leading)
                    .padding()
                RegionRound1View(region: regionTwo)
            }
        }.padding(0)
    }
}
