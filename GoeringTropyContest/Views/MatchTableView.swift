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
            HStack (spacing: 0){
                Round64View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                RegionRound1View(region: viewModel.regions[0])
                Round64View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let season = TropyViewModel()
    static var previews: some View {
        MatchTableView(viewModel: season)
            .environmentObject(season)
    }
}
