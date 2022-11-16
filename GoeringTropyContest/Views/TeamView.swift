//
//  TeamView.swift
//  GoeringTropyContest
//
//  Created by Stephi Goering on 05.10.22.
//

import SwiftUI

struct TeamView: View {
    
    var team: Team?
    let region:Region
    var fieldNumber: Int
    
    var body: some View {
        print("team \(team?.name ?? "unknown") for field \(fieldNumber)")
        return HStack(){
            if region.name == "West" || region.name == "East" {
                ZStack() {
                    let shape =  RoundedRectangle(cornerRadius: 10)
                    shape.fill(Color.white)
                    shape.strokeBorder(lineWidth: 3)
                        .foregroundColor(.black)
                    
                    if (team != nil) {
                        HStack() {
                            Text("\(team!.seed)")
                            Spacer()
                            Text(team!.name)
                                .scaledToFit()
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                            Spacer()
                            Image(uiImage: UIImage(named: team!.imageName)!)
                                .resizable()
                                .frame(width: (UIScreen.screenHeight/9)/3, height: (UIScreen.screenHeight/9)/3, alignment: Alignment.center)
                                .scaledToFit()
                        }.padding(5)
                    } else {
                        Text("NULL")
                    }
                    
                    
                }.frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10)
                if fieldNumber % 2 != 0 {
                    MatchLineDownLeft()
                        .fill(.black)
                        .frame(width: UIScreen.screenWidth/2.5/3, height: UIScreen.screenHeight/9/2 + 10, alignment: .center)
                } else {
                    MatchLineUpLeft()
                        .fill(.black)
                        .frame(width: UIScreen.screenWidth/2.5/3, height: UIScreen.screenHeight/9/2 + 10, alignment: .center)
                       
                }
            } else {
                if fieldNumber % 2 != 0 {
                    MatchLineDownRight()
                        .fill(.black)
                        .frame(width: UIScreen.screenWidth/2.5/3, height: UIScreen.screenHeight/9/2 + 10, alignment: .center)
                } else {
                    MatchLineUpRight()
                        .fill(.black)
                        .frame(width: UIScreen.screenWidth/2.5/3, height: UIScreen.screenHeight/9/2 + 10, alignment: .center)
                }
                
                ZStack() {
                    let shape =  RoundedRectangle(cornerRadius: 10)
                    shape.fill(Color.white)
                    shape.strokeBorder(lineWidth: 3)
                        .foregroundColor(.black)
                    if (team != nil) {
                        HStack() {
                            Text("\(team!.seed)")
                            Spacer()
                            Text(team!.name)
                                .scaledToFit()
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                            Spacer()
                            Image(uiImage: UIImage(named: team!.imageName)!)
                                .resizable()
                                .frame(width: (UIScreen.screenHeight/9)/3, height: (UIScreen.screenHeight/9)/3, alignment: Alignment.center)
                                .scaledToFit()
                        }
                        .padding(5)
                    }
                    
                    
                }.frame(width: UIScreen.screenWidth/2.5, height: UIScreen.screenHeight/9/2 + 10)
            }

        }.padding(.all, 0)
    }
}

struct MatchLineDownLeft: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y:  rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        return path
    }
}

struct MatchLineDownRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX+5, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX+5, y:  rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.maxY))

        return path
    }
}


struct MatchLineUpRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y:  rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}

struct MatchLineUpLeft: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y:  rect.midY+2.5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY-2.5))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY+2.5))
        

        return path
    }
}


struct TeamView_Previews: PreviewProvider {
    static let season = TropyViewModel()
    static var previews: some View {
        TeamView(team: Team(name: "Gonzaga", seed: 1, region: "South", imageName: "2560px-Gonzaga_Bulldogs_wordmark.svg"), region:season.regions[2], fieldNumber: 1)
            .environmentObject(season)
    }
}
