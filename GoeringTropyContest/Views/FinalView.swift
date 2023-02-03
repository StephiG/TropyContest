//
//  FinalView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 11.01.23.
//

import SwiftUI

struct FinalView: View {
    
    @EnvironmentObject var model:TropyViewModel
    
    
    let regionOne: Region
    let regionTwo: Region
    let regionThree: Region
    let regionFour: Region
    
    var body: some View {
        
        let teamRegionOne = model.picks[model.regions[0].id]![3].picks[0] ?? nil
        let teamRegionTwo = model.picks[model.regions[1].id]![3].picks[0] ?? nil
        let teamRegionThree = model.picks[model.regions[2].id]![3].picks[0] ?? nil
        let teamRegionFour = model.picks[model.regions[3].id]![3].picks[0] ?? nil
        let finalRight = model.finalPickRight ?? nil
        let finalLeft = model.finalPickLeft ?? nil
        let champion = model.finalPickChamp ?? nil
        
        return ScrollView {
            HStack(spacing: 0) {
                VStack(spacing: 0){
                    Rectangle().foregroundColor(.white).frame(width: UIScreen.teamViewWidth, height: UIScreen.teamViewHeight*7 + 70)
                    VStack(spacing: 0) {
                        
                        HStack (spacing: 0) {
                            MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                            TeamView(team: teamRegionOne, region:regionOne, fieldNumber: 1)
                                .onTapGesture {
                                    if (teamRegionOne != nil) {
                                        model.pickFinal3(winner: teamRegionOne!, side: "left" )
                                    }
                                }
                                .padding(.leading, 5.0)
                            
                        }
                        .padding(0)
                        
                        Rectangle().foregroundColor(.white).frame( height: UIScreen.teamViewHeight*22, alignment: Alignment.center)
                            .padding(.trailing, 5).background(.black)
                        HStack(spacing: 0) {
                            MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                            TeamView(team: teamRegionTwo, region:regionTwo, fieldNumber: 2)
                                .onTapGesture {
                                    if (teamRegionTwo != nil) {
                                        model.pickFinal3(winner: teamRegionTwo!, side: "left" )
                                    }
                                }
                                .padding(.leading, 5.0)
                        }
                        .padding(0)
                        
                        
                        
                    }.padding(0)
                }.padding(0)
                
                HStack(alignment: .center, spacing: 0){
                    HStack (alignment: .center, spacing: 0) {
                        MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                        ZStack() {
                            let shape =  RoundedRectangle(cornerRadius: 10)
                            shape.fill(Color.white)
                            shape.strokeBorder(lineWidth: 3)
                                .foregroundColor(.black)
                            
                            if (finalLeft != nil) {
                                HStack() {
                                    Text("\(finalLeft!.seed)")
                                    Spacer()
                                    Text(finalLeft!.name)
                                        .scaledToFit()
                                        .minimumScaleFactor(0.5)
                                        .lineLimit(1)
                                    Spacer()
                                    Image(uiImage: UIImage(named: finalLeft!.imageName)!)
                                        .resizable()
                                        .frame(width: UIScreen.teamViewHeight, height: UIScreen.teamViewHeight, alignment: Alignment.center)
                                        .scaledToFit()
                                }.padding(5)
                                    .onTapGesture {
                                        if (finalLeft != nil) {
                                            model.pickFinal3(winner: finalLeft!, side: "champ" )
                                        }
                                    }
                            }
                            
                        }.frame(width: UIScreen.teamViewWidth, height: UIScreen.teamViewHeight + 10).padding(0)
                    }
                    MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                    HStack (spacing: 0) {
                        ZStack() {
                            let shape =  RoundedRectangle(cornerRadius: 10)
                            shape.fill(Color.white)
                            shape.strokeBorder(lineWidth: 3)
                                .foregroundColor(.blue)
                            
                            if (champion != nil) {
                                HStack() {
                                    Text("\(champion!.seed)")
                                    Spacer()
                                    Text(champion!.name)
                                        .scaledToFit()
                                        .minimumScaleFactor(0.5)
                                        .lineLimit(1)
                                    Spacer()
                                    Image(uiImage: UIImage(named: champion!.imageName)!)
                                        .resizable()
                                        .frame(width: UIScreen.teamViewHeight, height: UIScreen.teamViewHeight, alignment: Alignment.center)
                                        .scaledToFit()
                                }.padding(5)
                                
                            }
                            
                            
                        }.frame(width: UIScreen.teamViewWidth, height: UIScreen.teamViewHeight + 10).padding(0)
                    }
                    MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                    
                    HStack (spacing: 0) {
                        
                        ZStack() {
                            let shape =  RoundedRectangle(cornerRadius: 10)
                            shape.fill(Color.white)
                            shape.strokeBorder(lineWidth: 3)
                                .foregroundColor(.black)
                            
                            if (finalRight != nil) {
                                HStack() {
                                    Text("\(finalRight!.seed)")
                                    Spacer()
                                    Text(finalRight!.name)
                                        .scaledToFit()
                                        .minimumScaleFactor(0.5)
                                        .lineLimit(1)
                                    Spacer()
                                    Image(uiImage: UIImage(named: finalRight!.imageName)!)
                                        .resizable()
                                        .frame(width: UIScreen.teamViewHeight, height: UIScreen.teamViewHeight, alignment: Alignment.center)
                                        .scaledToFit()
                                }.padding(5)
                                    .onTapGesture {
                                        if (finalRight != nil) {
                                            model.pickFinal3(winner: finalRight!, side: "champ" )
                                        }
                                    }
                            }
                            
                            
                        }.frame(width: UIScreen.teamViewWidth, height: UIScreen.teamViewHeight + 10).padding(0)
                        MatchLineStraight().fill().frame(width: UIScreen.teamViewHeight/4)
                        
                    }
                }
                VStack(spacing: 0){
                    Rectangle().foregroundColor(.white).frame(width: UIScreen.teamViewWidth, height: UIScreen.teamViewHeight*7 + 70)
                    VStack(spacing: 0) {
                        HStack (spacing: 0) {
                            TeamView(team: teamRegionThree, region:regionThree, fieldNumber: 1)
                                .padding(.trailing, 5.0)
                                .onTapGesture {
                                    if (teamRegionThree != nil) {
                                        model.pickFinal3(winner: teamRegionThree!, side: "right" )
                                    }
                                }
                            MatchLineStraight().fill()
                        }
                        
                        Rectangle().foregroundColor(.white).frame(height: UIScreen.teamViewHeight*22, alignment: Alignment.center)
                            .padding(.leading, 5).background(.black)
                        HStack(spacing: 0) {
                            TeamView(team: teamRegionFour, region:regionFour, fieldNumber: 2)
                                .padding(.trailing, 5.0)
                                .onTapGesture {
                                    if (teamRegionFour != nil) {
                                        model.pickFinal3(winner: teamRegionFour!, side: "right" )
                                    }
                                }
                            MatchLineStraight().fill()
                            
                        }
                        
                        
                        
                    }
                }.padding(0)
            }.padding(0)
        }
    }
}

struct FinalView_Previews: PreviewProvider {
        static let season = TropyViewModel()
            static var previews: some View {
                FinalView(regionOne: season.regions[0], regionTwo:  season.regions[1], regionThree:  season.regions[2], regionFour:  season.regions[3])
                .environmentObject(season)
            }
    
}
