//
//  MyObservableObjView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct MyObservableObjView: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
//        VStack {
//            Text("Hello, \(settings.username)!")
//            Button("Change Username") {
//                settings.username = "John Doe"
//            }
//        }
        GameView()
            .environmentObject(GameSettings())
    }
}

struct MyObservableObjView_Previews: PreviewProvider {
    static var previews: some View {
        MyObservableObjView()
    }
}

class UserSettings: ObservableObject {
    @Published var username = "Anonymous"
}

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct GameView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button("Increment Score") {
                settings.score += 1
            }
        }
    }
    
}
