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
        
        let teamsInRound = model.teamArray(in: region, for: 1)
       
        
        ScrollView {
            VStack {
                ForEach(Array(teamsInRound.enumerated()), id: \.offset) { index, pairing in
                    
                    let team1 = pairing.team1
                    let team2 = pairing.team2
                    
                    VStack {
                            TeamView(team: team1, region:region, fieldNumber: 1)
                               
                            TeamView(team: team2, region:region, fieldNumber: 2)
                                
                    }
                    

                 }
             }
        }
    }

}

struct RegionRound2View_Previews: PreviewProvider {
    static let season = TropyViewModel()
        static var previews: some View {
            RegionRound1View(region: season.regions[0])
                .environmentObject(season)
        }
}

