//
//  RegionView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct RegionRound1View: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    let region: Region
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(Array(BracketTable.pairings.enumerated()), id: \.offset) { index, pairing in
                    let team1 = region.teams.first {
                        $0.seed == pairing.0
                    }
                    let team2 = region.teams.first {
                        $0.seed == pairing.1
                    }
                    if let team1 = team1,
                       let team2 = team2 {
                        VStack {
                            TeamView(team: team1, fieldNumber: 1)
                                .onTapGesture {
                                    model.pick(winner:team1, for:region, in:index)
                                }
                            TeamView(team: team2, fieldNumber: 2)
                                .onTapGesture {
                                    model.pick(winner:team2, for:region, in:index)
                                }
                        }
                    }
                 }
             }
        }
    }
}

struct RegionView_Previews: PreviewProvider {
    static let season = TropyViewModel()
    static var previews: some View {
        RegionRound1View(region: season.regions[0])
            .environmentObject(season)
    }
}
