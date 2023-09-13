//
//  MyTabView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct MyTabView: View {
    
    var animals = ["Lion", "Tiger", "Elephant", "Leopard"]
    var plants = ["Rose", "Lily", "Tulip", "Orchid"]
    
    var body: some View {
        TabView {
            List(animals, id:\.self) { animal in
                Text(animal)
            }
            .tabItem {
                Image(systemName: "hare")
                Text("Animals")
            }
            
            List(plants, id:\.self) { plant in
                Text(plant)
            }
            .tabItem {
                Image(systemName: "leaf")
                Text("Plants")
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
