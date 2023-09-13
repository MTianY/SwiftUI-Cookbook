//
//  MyToggleView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isChecked: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                Text("I agree to the terms and conditions")
            }
            .toggleStyle(CheckboxToggleStyle())
            .padding()
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
