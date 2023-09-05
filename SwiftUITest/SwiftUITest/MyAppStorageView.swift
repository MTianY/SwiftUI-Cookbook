//
//  MyAppStorageView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyAppStorageView: View {
    
    @AppStorage("username") var username: String = "Anonymous"
    
    var body: some View {
        VStack {
            Text("Welcome, \(username)!")
            
            Button("Log in") {
                username = "SuzGupta"
            }
        }
    }
}

struct MyAppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        MyAppStorageView()
    }
}
