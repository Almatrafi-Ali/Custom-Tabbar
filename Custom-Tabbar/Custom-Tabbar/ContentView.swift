//
//  ContentView.swift
//  Custom-Tabbar
//
//  Created by Ali Almatrafi on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("الواجهة الأولى!")
                    .font(.largeTitle)
                    .offset(y: -80)
                    .padding()
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset( y: 222)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
