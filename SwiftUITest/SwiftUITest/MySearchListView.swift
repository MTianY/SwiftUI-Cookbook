//
//  MySearchListView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct ParkItem: Identifiable {
    let id = UUID()
    let name : String
}

struct MySearchListView: View {
    
    @State private var searchText = ""
    
    let parks: [ParkItem] = [
        ParkItem(name: "Yosemite National Park"),
        ParkItem(name: "Redwood National and State Parks"),
        ParkItem(name: "Sequoia National Park"),
        ParkItem(name: "Pinnacles National Park"),
        ParkItem(name: "Joshua Tree National Park"),
        ParkItem(name: "Death Valley National Park"),
        ParkItem(name: "Channel Islands National Park"),
        ParkItem(name: "Kings Canyon National Park"),
        ParkItem(name: "Lassen Volcanic National Park"),
        ParkItem(name: "Point Reyes National Seashore")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(parks.filter {
                    searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)
                }) { park in
                    Text(park.name)
                }
            }
            .navigationTitle("California Parks")
            .searchable(text: $searchText)
        }
    }
}

struct MySearchListView_Previews: PreviewProvider {
    static var previews: some View {
        MySearchListView()
    }
}
