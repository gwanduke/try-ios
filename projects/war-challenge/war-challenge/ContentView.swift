//
//  ContentView.swift
//  war-challenge
//
//  Created by Kim Gwanduk on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer() // Spacer는 minLength를 지정하지 않는 이상, css의 flex-grow: 1 처럼 남는 영역을 동일하게 나눠갖는듯함
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
                
                Button(
                    action: {
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        playerCard = "card" + String(playerRand)
                        cpuCard = "card" + String(cpuRand) // ts 처럼 자동 캐스팅은 안됨. 명시 필요
                        
                        if playerRand > cpuRand {
                            playerScore += 1
                        }
                        else if cpuRand > playerRand {
                            cpuScore += 1
                        } else {
                            // Nothing Todo.
                        }
                        
                        
                    },
                    label: { Image("dealbutton") }
                )
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()

                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
