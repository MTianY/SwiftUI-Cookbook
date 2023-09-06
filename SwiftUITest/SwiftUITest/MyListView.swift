//
//  MyListView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct ScientistDetailView : View {
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
                .padding()
            
            Text("More details about \(name) would be presented here.")
                .font(.body)
                .foregroundColor(.gray)
        }
        .navigationTitle(name)
    }
}

struct MyListView: View {
    
    let scientists = ["Albert Einstein", "Isaac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]
    
    var body: some View {
//        List(scientists, id: \.self) { scientist in
//            Text(scientist)
//        }
        
//        List {
//            ForEach(scientists, id: \.self) { scientist in
//                Text(scientist)
//            }
//        }
        
        NavigationStack {
            List(scientists, id: \.self) { scientist in
                NavigationLink(scientist, value: scientist)
            }
            .navigationDestination(for: String.self) { scientistName in
                ScientistDetailView(name: scientistName)
            }
        }
        
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
