//
//  ContentView.swift
//  war-challenge
//
//  Created by Kim Gwanduk on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer() // Spacer는 minLength를 지정하지 않는 이상, css의 flex-grow: 1 처럼 남는 영역을 동일하게 나눠갖는듯함
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()

                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
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
