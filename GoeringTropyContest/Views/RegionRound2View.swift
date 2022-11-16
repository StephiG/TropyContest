//
//  RegionRound2View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 16.11.22.
//

import SwiftUI

struct RegionRound2View: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    let region: Region
    
    var body: some View {
        
        let teamsInRound = model.teamArray(in: region, for: 2)
       
        
        ScrollView {
            VStack {
                ForEach(Array(teamsInRound.enumerated()), id: \.offset) { index, pairing in
                    
                    let team1 = pairing.team1
                    let team2 = pairing.team2
                    if let team1 = team1,
                       let team2 = team2 {
                        VStack {
                            TeamView(team: team1, region:region, fieldNumber: 1)
                                .onTapGesture {
                                    model.pick(winner:team1, for:region, in:index) // pairing.index???
                                }
                            TeamView(team: team2, region:region, fieldNumber: 2)
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

/*struct RegionRound2View_Previews: PreviewProvider {
    static var previews: some View {
        RegionRound2View()
    }
}
*/
