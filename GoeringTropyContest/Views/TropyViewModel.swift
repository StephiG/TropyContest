//
//  TropyViewModel.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

class TropyViewModel: ObservableObject {
    
    //@Published var currentRegion = regions[0]
    
    static let regionWest = Region(teams: [
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
    
    static let regionEast = Region(teams: [
        Team(name: "Baylor", seed: 1, region: "East", imageName: "Baylor_Athletics_logo.svg"),
        Team(name: "Kentucky", seed: 2, region: "East", imageName: "Kentucky_Wildcats_logo.svg"),
        Team(name: "Purdue", seed: 3, region: "East", imageName: "2560px-Purdue_Boilermakers_logo.svg"),
        Team(name: "UCLA", seed: 4, region: "East", imageName: "2560px-UCLA_Bruins_script.svg"),
        Team(name: "Saint Mary's", seed: 5, region: "East", imageName: "Saint_Mary's_College_Gaels_logo.svg"),
        Team(name: "Texas", seed: 6, region: "East", imageName: "2560px-Texas_Longhorns_logo.svg"),
        Team(name: "Murray St.", seed: 7, region: "East", imageName: "MSU_Logo_2"),
        Team(name: "North Carolina", seed: 8, region: "East", imageName: "2560px-North_Carolina_Tar_Heels_logo.svg"),
        Team(name: "Marquette", seed: 9, region: "East", imageName: "2560px-Marquette_Golden_Eagles_logo.svg"),
        Team(name: "San Francisco", seed: 10, region: "East", imageName: "San_Francisco_Dons_logo.svg"),
        Team(name: "Virginia Tech", seed: 11, region: "East", imageName: "2560px-Virginia_Tech_Hokies_logo.svg"),
        Team(name: "Indiana", seed: 12, region: "East", imageName: "Indiana_Hoosiers_logo.svg"),
        Team(name: "Akron", seed: 13, region: "East", imageName: "2560px-Akron_Zips_logo.svg"),
        Team(name: "Yale", seed: 14, region: "East", imageName: "Yale_Bulldogs_script.svg"),
        Team(name: "Saint Peter's", seed: 15, region: "East", imageName: "Saint_Peter's_Peacocks_monogram.svg"),
        Team(name: "Norfolk St.", seed: 16, region: "East", imageName: "Norfolk_State_Spartans_wordmark")], name: "East")
    
    static let regionSouth = Region(teams: [
        Team(name: "Arizona", seed: 1, region: "South", imageName: "Arizona_Wildcats_logo.svg"),
        Team(name: "Villanova", seed: 2, region: "South", imageName: "Villanova_Wildcats_logo.svg"),
        Team(name: "Tennessee", seed: 3, region: "South", imageName: "Tennessee_Volunteers_logo.svg"),
        Team(name: "Illinois", seed: 4, region: "South", imageName: "Illinois_Fighting_Illini_logo.svg"),
        Team(name: "Houston", seed: 5, region: "South", imageName: "Houston_Cougars_primary_logo.svg"),
        Team(name: "Colorado State", seed: 6, region: "South", imageName: "Colorado_State_Rams_logo.svg"),
        Team(name: "Ohio State", seed: 7, region: "South", imageName: "Ohio_State_Buckeyes_logo.svg"),
        Team(name: "Seton Hall", seed: 8, region: "South", imageName: "Seton_Hall_Pirates_logo.svg"),
        Team(name: "TCU", seed: 9, region: "South", imageName: "2560px-TCU_Horned_Frogs_logo.svg"),
        Team(name: "Loyola Chicago", seed: 10, region: "South", imageName: "Loyola_Ramblers_logo.svg"),
        Team(name: "Michigan", seed: 11, region: "South", imageName: "2560px-Michigan_Wolverines_logo.svg"),
        Team(name: "UAB", seed: 12, region: "South", imageName: "UAB_Blazers_wordmark"),
        Team(name: "Chattanooga", seed: 13, region: "South", imageName: "Chattanooga_Mocs_logo.svg"),
        Team(name: "Longwood", seed: 14, region: "South", imageName: "2560px-Longwood_Lancers_wordmark.svg"),
        Team(name: "Delaware", seed: 15, region: "South", imageName: "Delaware_Fightin'_Blue_Hens_logo.svg"),
        Team(name: "Wright State", seed: 16, region: "South", imageName: "Wright_State_Raiders_logo")], name: "South")
    
   
    static let regionMidWest = Region(teams: [
        Team(name: "Kansas", seed: 1, region: "MidWest", imageName: "Kansas_Jayhawks_logo.svg"),
        Team(name: "Auburn", seed: 2, region: "MidWest", imageName: "Auburn_Tigers_logo.svg"),
        Team(name: "Wisconsin", seed: 3, region: "MidWest", imageName: "Wisconsin_Badgers_logo.svg"),
        Team(name: "Providence", seed: 4, region: "MidWest", imageName: "Providence_Friars_P_script_logo"),
        Team(name: "Iowa", seed: 5, region: "MidWest", imageName: "Iowa_Hawkeyes_logo.svg"),
        Team(name: "LSU", seed: 6, region: "MidWest", imageName: "2560px-LSU_Athletics_logo.svg"),
        Team(name: "USC", seed: 7, region: "MidWest", imageName: "USC_Trojans_logo.svg"),
        Team(name: "San Diego State", seed: 8, region: "MidWest", imageName: "2560px-San_Diego_State_Aztecs_logo.svg"),
        Team(name: "Creighton", seed: 9, region: "MidWest", imageName: "Creighton_Bluejays_logo.svg"),
        Team(name: "Miami", seed: 10, region: "MidWest", imageName: "2560px-Miami_Hurricanes_logo.svg"),
        Team(name: "Iowa Sate", seed: 11, region: "MidWest", imageName: "2560px-Iowa_State_Cyclones_logo.svg"),
        Team(name: "Richmond", seed: 12, region: "MidWest", imageName: "2560px-Richmond_Spiders_text_logo.svg"),
        Team(name: "South Dakota State", seed: 13, region: "MidWest", imageName: "South_Dakota_State_University_logo.svg"),
        Team(name: "Colgate", seed: 14, region: "MidWest", imageName: "Colgate_Raiders_(2020)_logo.svg"),
        Team(name: "Saint Peter's", seed: 15, region: "MidWest", imageName: "Saint_Peter's_Peacocks_monogram.svg"),
        Team(name: "Jacksonville State", seed: 16, region: "MidWest", imageName: "Jacksonville_State_Gamecocks_logo.svg")], name: "MidWest")
    
    @Published var regions = [regionWest, regionEast, regionSouth, regionMidWest]

    // region UUID mapped to array of roundpicks (0th is first round, 1th second etc)
    @Published var picks:[UUID : [RoundPicks]] = [
        regionWest.id : initializeEmptyRoundPicks(for: regionWest),
        regionEast.id : initializeEmptyRoundPicks(for: regionEast),
        regionSouth.id : initializeEmptyRoundPicks(for: regionSouth),
        regionMidWest.id : initializeEmptyRoundPicks(for: regionMidWest)
    ]
    
    static func initializeEmptyRoundPicks(for region:Region) -> [RoundPicks] {
        return [
            RoundPicks(region: region, round: 0),
            RoundPicks(region: region, round: 1),
            RoundPicks(region: region, round: 2),
            RoundPicks(region: region, round: 3)
        ]
    }
}
