//
//  Team.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//


import SwiftUI

struct Team: Codable, Equatable, Identifiable {
    var id = UUID()
    var name: String
    var seed: Int
    var region: String
    var imageName: String
    
    func gettingTeamSeed() -> String {
        if self.seed < 10 {
            return " \(self.seed)"
        } else {
            return "\(self.seed)"
        }
    }
}

