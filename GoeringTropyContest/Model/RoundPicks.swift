//
//  RoundPicks.swift
//  GoeringTropyContest
//
//  Created by John Goering on 07.10.22.
//

import Foundation

class RoundPicks: Codable, Equatable, Identifiable {
    static func == (lhs: RoundPicks, rhs: RoundPicks) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var region:Region // which region
    var round:Int // 0 = 64 round, 1 = 32 round, etc...
    var picks:[Int:Team] = [:] // 0 = first (top) match, 1 = second (from top) match... 15 would be last match in round 64 for the region
    
    init(id: UUID = UUID(), region: Region, round: Int, picks: [Int : Team] = [:]) {
        self.id = id
        self.region = region
        self.round = round
        self.picks = picks
    }
}
