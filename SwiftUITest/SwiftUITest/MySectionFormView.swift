//
//  MySectionFormView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct ContentView3: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var age = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("Additional Information")) {
                    TextField("Age", text: $age)
                }
            }
            .navigationTitle("Registration Form")
        }
    }
    
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
