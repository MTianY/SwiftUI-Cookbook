//
//  MyCustonListTileView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct Park: Hashable {
    let name: String
    let imageName: String
    let description: String
}

extension Park: Identifiable {
    var id: String {
        name
    }
}

struct ParkDetailsView: View {
    let park: Park
    
    var body: some View {
        VStack {
            Image(park.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(park.name)
                .font(.title)
                .foregroundColor(.primary)
            Text(park.description)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct MyCustonListTileView: View {
    
    /*
    let names = ["Alices", "Bob", "Charlie", "Dave"]
    
    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
                .listRowBackground(
                    LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing)
                )
        }
    }
     */
    
    @State private var presentedParks: [Park] = []
    
    var parks: [Park] {
        [
            Park(name: "Yosemite", imageName: "yosemite", description: "Yosemite National Park"),
            Park(name: "Sequoia", imageName: "sequoia", description: "Sequoia National Park"),
            Park(name: "Point Reyes", imageName: "point_reyes", description: "Point Reyes National Seashore")
        ]
    }
    
    var body: some View {
        NavigationStack(path: $presentedParks) {
            List(parks) { park in
                NavigationLink(park.name, value: park)
            }
            .navigationDestination(for: Park.self) { park in
                ParkDetailsView(park: park)
            }
        }
    }
    
}

struct MyCustonListTileView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustonListTileView()
    }
}
