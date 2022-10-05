//
//  RegionView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct RegionView: View {
    
    let region: Region
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(region.teams) { team in
                    TeamView(team: team, fieldNUmber: team.seed)
                 }
             }
        }
        
    }
}

struct RegionView_Previews: PreviewProvider {
    static var previews: some View {
        RegionView(region: Region(teams: [
            Team(name: "Gonzaga", seed: 1, region: "West", imageName: "2560px-Gonzaga_Bulldogs_wordmark.svg"),
            Team(name: "Duke", seed: 2, region: "West", imageName: "Duke_Blue_Devils_basketball_mark.svg"),
            Team(name: "Texas Tech", seed: 3, region: "West", imageName: "Texas_Tech_Athletics_logo.svg"),
            Team(name: "Arkansas", seed: 4, region: "West", imageName: "2560px-Arkansas_Razorbacks_logo.svg"),
            Team(name: "UConn", seed: 5, region: "West", imageName: "Connecticut_Huskies_logo.svg"),
            Team(name: "Alabama", seed: 6, region: "West", imageName: "800px-Alabama_Crimson_Tide_logo.svg"),
            Team(name: "Michigan St.", seed: 7, region: "West", imageName: "Michigan_State_Athletics_logo.svg"),
            Team(name: "Boise St.", seed: 8, region: "West", imageName: "Boise_State_B_logo.svg"),
            Team(name: "Memphis", seed: 9, region: "West", imageName: "Memphis_Tigers_logo"),
            Team(name: "Davidson", seed: 10, region: "West", imageName: "Davidson_Wildcats_logo.svg"),
            Team(name: "Notre Dame", seed: 11, region: "West", imageName: "Notre_Dame_Fighting_Irish_logo.svg"),
            Team(name: "New Mexico St.", seed: 12, region: "West", imageName: "New_Mexico_State_Aggies_logo.svg"),
            Team(name: "Vermont", seed: 13, region: "West", imageName: "Vermont_Athletics_wordmark"),
            Team(name: "Montana St.", seed: 14, region: "West", imageName: "Montana_State_Bobcats_M_Logo"),
            Team(name: "CSU Fullerton", seed: 15, region: "West", imageName: "2560px-Cal_State_Fullerton_Titans_logo.svg"),
            Team(name: "Georgia St.", seed: 16, region: "West", imageName: "Georgia_State_Athletics_logo.svg")], name: "West")
        )
    }
}
