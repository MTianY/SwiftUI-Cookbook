//
//  ContentView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .padding()
                .font(.headline)
//            Button {
//                print("Button tapped!")
//            } label: {
//                Text("Tap me!")
//            }
            
            Button(action: {
                print("Button Pressed")
            }, label: {
                Text("Press me!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            })
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.purple, .pink]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
            .cornerRadius(10)
            
            Image("Kodeco")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .shadow(radius: 7)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
