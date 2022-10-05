//
//  GoeringTropyContestApp.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

@main
struct GoeringTropyContestApp: App {
    let season = TropyViewModel()
    
    var body: some Scene {
        WindowGroup {
            MatchTableView(viewModel: season)
        }
    }
}
