//
//  RegionRound2View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 16.11.22.
//

import SwiftUI

struct RegionRound1View: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    let region: Region
    
   
    
    var body: some View {
        
        var teamsInRound = model.teamArray(in: region, for: 1)
       
        
        ScrollView {
            VStack(spacing: 0){
                Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2/2 + 5, alignment: Alignment.center)
                ForEach(Array(teamsInRound.enumerated()), id: \.offset) { index, pairing in
                    
                    let team1 = pairing.team1
                    let team2 = pairing.team2
                    
                    VStack(spacing: 0) {
                       
                        TeamView(team: team1, region:region, fieldNumber: 1)
                        Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10, alignment: Alignment.center).padding(0)
                        TeamView(team: team2, region:region, fieldNumber: 2)
                        Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10, alignment: Alignment.center).padding(0)
                                
                    }
                    

                 }
                Rectangle().foregroundColor(.white).frame(width: (UIScreen.screenHeight/9)/3, height: (UIScreen.screenHeight/9)/2/2 + 5, alignment: Alignment.center)
             }
        }.padding(0)
    }

}

struct RegionRound1View_Previews: PreviewProvider {
    static let season = TropyViewModel()
        static var previews: some View {
            RegionRound1View(region: season.regions[0])
                .environmentObject(season)
        }
}

