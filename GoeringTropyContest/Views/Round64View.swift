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
        HStack(spacing: 0){
            VStack (spacing: 0){ 
                RegionRound0View(region: regionOne)
            //    Rectangle()
          //          .frame(width: UIScreen.screenWidth/2, height: 5.0, alignment: .leading)
          //          .padding()
                RegionRound0View(region: regionTwo)
            }
        }.padding(0)
    }
}

