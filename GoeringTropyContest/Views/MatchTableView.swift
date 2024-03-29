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
        ScrollView([.horizontal, .vertical])  {
            HStack(spacing: 0){
                Round64View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                Round32View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                Round16View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                Round8View(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1])
                FinalView(regionOne: viewModel.regions[0], regionTwo: viewModel.regions[1], regionThree: viewModel.regions[2], regionFour: viewModel.regions[3])
                Round8View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
                Round16View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
                Round32View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
                Round64View(regionOne: viewModel.regions[2], regionTwo: viewModel.regions[3])
            }.padding(0)
            
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
