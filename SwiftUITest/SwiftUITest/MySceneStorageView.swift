//
//  MySceneStorageView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MySceneStorageView: View {
    @SceneStorage("selectedTab") var selectedTab: String?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 11")
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }
                .tag("Tab1")
            
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
                .tag("Tab2")
        }
    }
}

struct MySceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        MySceneStorageView()
    }
}
