//
//  RoundPicks.swift
//  GoeringTropyContest
//
//  Created by John Goering on 07.10.22.
//

import Foundation

struct RoundPicks: Codable, Equatable, Identifiable {
    var id = UUID()
    var region:Region // which region
    var round:Int // 0 = 64 round, 1 = 32 round, etc...
    var picks:[Int:Team] = [:] // 0 = first (top) match, 1 = second (from top) match... 7 would be last match in round 64 for the region
}
