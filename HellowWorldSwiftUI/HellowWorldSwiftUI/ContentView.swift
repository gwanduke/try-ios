//
//  ContentView.swift
//  HellowWorldSwiftUI
//
//  Created by Kim Gwanduk on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5.0) {
            Text("Hello!")
                .padding(10) // 이런 것들을 modifier라고 부른다.
            .background(Color.blue.blur(radius: 3.0))
            
            Text("World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
