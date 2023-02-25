//
//  ContentView.swift
//  new_dice_game
//
//  Created by Yann DIPITA on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var rightDiceNumber = 1
    @State var leftDiceNumber = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceImage(n:rightDiceNumber)
                    DiceImage(n:leftDiceNumber)
                }
                Spacer()
                Button {
                    self.rightDiceNumber = Int.random(in: 1...6)
                    self.leftDiceNumber = Int.random(in: 1...6)
                } label: {
                    RollButton()
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceImage : View {
    let n : Int
    var body: some View {
        Image("dice\(n)").padding()
    }
}

struct RollButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius:10)
            .fill(Color(hue: 1.0, saturation: 0.862, brightness: 0.555))
            .frame(width: 120, height:120).overlay(VStack{
                Text("ROLL").font(.system(size: 20, weight: .bold)).foregroundColor(Color.white)
            })
    }
}
