//
//  ContentView.swift
//  Expenditure
//
//  Created by Yoonis on 04.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack(spacing: 100){
                Image(systemName: "eurosign.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("DIANA")
                    .font(.system(size: 40, weight: .medium))
                    .foregroundStyle(.black)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
