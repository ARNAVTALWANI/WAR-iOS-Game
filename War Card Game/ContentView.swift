//
//  ContentView.swift
//  War Card Game
//
//  Created by Arnav Talwani on 2023-12-08.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Spacer()
            Image("background-plain").resizable().ignoresSafeArea()
            Spacer()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
    
    func deal() {
        //Randomize player's card
        var playerCardVal = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardVal)
        
        //Randomize cpu card
        var cpuCardVal = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardVal)
        
        //Update scores
        if playerCardVal > cpuCardVal {
            //Add 1 to player score
            playerScore += 1
        } else if playerCardVal < cpuCardVal {
            //Add 1 to player score
            cpuScore += 1
        } else {
            // Tie
            playerScore += 1
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
