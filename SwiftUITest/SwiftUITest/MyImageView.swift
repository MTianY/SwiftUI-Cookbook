//
//  MyImageView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "bell")
//                .symbolVariant(.slash)
//
//            Image(systemName: "bell")
//                .symbolVariant(.square)
//
//            Image(systemName: "bell")
//                .symbolVariant(.fill.slash)
//        }
        
        TabView {
            Text("Your View Here")
                .tabItem {
                    Label("Home", systemImage: "person")
                        .symbolVariant(.none)
                }
            
            Text("Your Activity View Here")
                .tabItem {
                    Label("Activity", systemImage: "bell")
                        .symbolVariant(.none)
                }
        }
        
    }
}

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
