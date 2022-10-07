//
//  MatchTableView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct MatchTableView: View {
    
    @ObservedObject var viewModel: TropyViewModel
    
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            HStack {
                Round64View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                Round64View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let season = TropyViewModel()
        MatchTableView(viewModel: season)
    }
}
