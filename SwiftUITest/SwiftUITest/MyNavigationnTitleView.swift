//
//  MyNavigationnTitleView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct MyNavigationnTitleView: View {
    
    @State private var selectedItem = "Item 1"
    
    @State private var details = [
        "Item 1",
        "Item 2",
        "Item 3"
    ]
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(details, id: \.self) { detail in
                    Button(detail) {
                        selectedItem = detail
                    }
                    .foregroundColor(.black)
                }
            }
            .navigationTitle(selectedItem)
        }
        
        /*
        NavigationStack {
            List {
                NavigationLink("Item 1", value: "Item 1 Detail View")
                NavigationLink("Item 2", value: "Item 2 Detail View")
                NavigationLink("Item 3", value: "Item 3 Detail View")
            }
            .navigationTitle("List With Navigation")
            .navigationDestination(for: String.self) { detail in
                DetailsView(detail: detail)
            }
        }
         */
    }
}

struct DetailsView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}

struct MyNavigationnTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationnTitleView()
    }
}
