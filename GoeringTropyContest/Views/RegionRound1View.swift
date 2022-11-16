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
        
        let teamsInRound = model.pairings["\(region.id)1"] ??
        [
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil),
            TeamPairing(id:UUID(), team1: nil, team2: nil)
        ]

        return ScrollView {
            VStack(spacing: 0){
                Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2/2 + 5, alignment: Alignment.center)
                ForEach(Array(teamsInRound.enumerated()), id: \.offset) { index, pairing in
                    
                    let team1 = pairing.team1
                    let team2 = pairing.team2
                    
                    VStack(spacing: 0) {
                        HStack (spacing: 0) {
                            MatchLineStraight().fill()
                            TeamView(team: team1, region:region, fieldNumber: 1)
                                .padding(.leading, 5.0)
                        }
                       
                        Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10, alignment: Alignment.center).padding(0)
                        HStack(spacing: 0) {
                            MatchLineStraight().fill()
                            TeamView(team: team2, region:region, fieldNumber: 2)
                                .padding(.leading, 5.0)
                        }
                        
                        Rectangle().foregroundColor(.white).frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10, alignment: Alignment.center).padding(0)
                                
                    }
                    

                 }
                Rectangle().foregroundColor(.white).frame(width: (UIScreen.screenHeight/9)/3, height: (UIScreen.screenHeight/9)/2/2 + 5, alignment: Alignment.center)
             }
        }.padding(0)
    }

}

struct MatchLineStraight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y:  rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        return path
    }
}

struct RegionRound1View_Previews: PreviewProvider {
    static let season = TropyViewModel()
        static var previews: some View {
            RegionRound1View(region: season.regions[0])
                .environmentObject(season)
        }
}

