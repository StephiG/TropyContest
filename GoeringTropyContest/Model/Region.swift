//
//  Region.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct Region: Codable, Equatable, Identifiable {
    var id = UUID()
    var teams: [Team]
    var name: String
    
    var isLeft: Bool {
        get {
            return name == "East" || name == "West"
        }
    }
}
