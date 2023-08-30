//
//  ContentView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Welcome to my app!")
                NavigationLink(destination: DetailView()) {
                    Text("Go to detail View")
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Settings tapped")
                        }) {
                            Text("Settings")
                        }
                    }
                }
            }
        }
        
        VStack {
            Text("Hello, SwiftUI!")
                .padding()
                .font(.headline)
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
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .shadow(radius: 7)

        }
    }
}

struct DetailView: View {
    
    let tasks = ["Task1", "Task2", "Task3", "Task4", "Task5"]
    
    var body: some View {
        List(tasks, id: \.self) {task in
            Text(task)
        }
        Text("This is the detail View!")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
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
