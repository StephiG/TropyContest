//
//  BracketTable.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct BracketTable {
    
    var teamsInBracketRegionWest: [Int: Team] = [:]
    var teamsInBracketRegionEast: [Int: Team] = [:]
    var teamsInBracketRegionSouth: [Int: Team] = [:]
    var teamsInBracketRegionMidwest: [Int: Team] = [:]
    
    
    
    var finalTeams = [[1: nil], [2: nil], [3: nil], [4: nil], [5: nil], [6: nil], [7: nil]]
    
    let seedOrderRound64 = [1, 16, 8, 9, 5, 12, 4, 13, 6, 11, 3, 14, 7, 10, 2, 15]
    
    mutating func creatingRegionBracket(region: Region) {
        var bracket: [Int:Team] = [:]
        for i in 0...15 {
            let team = region.teams.first(where:  { $0.seed == seedOrderRound64[i] })
            bracket[i+1] = team
        }
        for i in 16...29 {
            bracket[i+1] = nil
        }
        
        
        switch region.name {
        case "West":
            teamsInBracketRegionWest = bracket
        case "Εast":
            teamsInBracketRegionEast = bracket
        case "South":
            teamsInBracketRegionSouth = bracket
        case "Midwest":
            teamsInBracketRegionMidwest = bracket
        default:
            break
        }
    }
}
