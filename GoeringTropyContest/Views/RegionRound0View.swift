//
//  RegionView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct RegionRound0View: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    let region: Region
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                ForEach(Array(BracketTable.pairings.enumerated()), id: \.offset) { index, pairing in
                    let team1 = region.teams.first {
                        $0.seed == pairing.0
                    }
                    let team2 = region.teams.first {
                        $0.seed == pairing.1
                    }
                    if let team1 = team1,
                       let team2 = team2 {
                        VStack(spacing: 0) {
                            TeamView(team: team1, region:region, fieldNumber: 1)
                                .onTapGesture {
                                    model.pick(winner:team1, for:region, round: 0,  in:index)
                                }.padding(0)
                            TeamView(team: team2, region:region, fieldNumber: 2)
                                .onTapGesture {
                                    model.pick(winner:team2, for:region, round: 0, in:index)
                                }.padding(0)
                        }.padding(0)
                    }
                 }
             }.padding(0)
        }
        .padding(0.0)
    }
}

struct  RegionRound0View_Previews: PreviewProvider {
    static let season = TropyViewModel()
    static var previews: some View {
        RegionRound0View(region: season.regions[0])
            .environmentObject(season)
    }
}
