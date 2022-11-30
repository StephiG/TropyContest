//
//  RegionRound2View.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 30.11.22.
//

import SwiftUI

struct RegionRound2View: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    let region: Region
    
   
    
    var body: some View {
        
        let teamsInRound = model.pairings["\(region.id)2"] ??
        [
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil)
        
        ]
        

        return ScrollView {
            VStack(spacing: 0){
                Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2/2 + UIScreen.screenHeight/9/2 + 15, alignment: Alignment.center)
                ForEach(Array(teamsInRound.enumerated()), id: \.offset) { index, pairing in
                    
                    let team1 = pairing.team1
                    let team2 = pairing.team2
                    
                    VStack(spacing: 0) {
                        if region.name == "West" || region.name == "East" {
                            HStack (spacing: 0) {
                                MatchLineStraight().fill()
                                TeamView(team: team1, region:region, fieldNumber: 1)
                                    .padding(.leading, 5.0)
                                    .onTapGesture {
                                        if (team1 != nil) {
                                            model.pick(winner:team1!, for:region, round: 2,  in:index)
                                        }
                                    }
                            }
                           
                            Rectangle().foregroundColor(.white).frame(height: (UIScreen.screenHeight/9/2)*3 + 30, alignment: Alignment.center)
                                .padding(.trailing, 5).background(.black)
                            HStack(spacing: 0) {
                                MatchLineStraight().fill()
                                TeamView(team: team2, region:region, fieldNumber: 2)
                                    .padding(.leading, 5.0)
                                    .onTapGesture {
                                        if (team2 != nil) {
                                            model.pick(winner:team2!, for:region, round: 2,  in:index)
                                        }
                                    }
                            }
                            
                            Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: (UIScreen.screenHeight/9/2)*3 + 30, alignment: Alignment.center).padding(0)
                        } else {
                            HStack (spacing: 0) {
                                TeamView(team: team1, region:region, fieldNumber: 1)
                                    .padding(.trailing, 5.0)
                                    .onTapGesture {
                                        if (team1 != nil) {
                                            model.pick(winner:team1!, for:region, round: 2,  in:index)
                                        }
                                    }
                                MatchLineStraight().fill()
                            }
                           
                            Rectangle().foregroundColor(.white).frame(height: (UIScreen.screenHeight/9/2)*3 + 30, alignment: Alignment.leading)
                                .padding(.leading, 5).background(.black)
                            HStack(spacing: 0) {
                                TeamView(team: team2, region:region, fieldNumber: 2)
                                    .padding(.trailing, 5.0)
                                    .onTapGesture {
                                        if (team2 != nil) {
                                            model.pick(winner:team2!, for:region, round: 2,  in:index)
                                        }
                                    }
                                MatchLineStraight().fill()
                            }
                            
                            Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: (UIScreen.screenHeight/9/2)*3 + 30, alignment: Alignment.center).padding(0)
                        }
                                
                    }
                    

                 }
//Rectangle().foregroundColor(.white).frame(width: (UIScreen.screenHeight/9)/3, height:(UIScreen.screenHeight/9)/2/2 + 5, alignment: Alignment.center)
             }
        }.padding(0)
    }

}



struct RegionRound2View_Previews: PreviewProvider {
    static let season = TropyViewModel()
        static var previews: some View {
            RegionRound2View(region: season.regions[2])
                .environmentObject(season)
        }
}
