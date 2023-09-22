//
//  MyAnimateBindingValueView.swift
//  SwiftUITest
//
//  Created by TY on 9/20/23.
//

import SwiftUI

struct MyAnimateBindingValueView: View {
    
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Text("Your selection is: \(selection)")
                .font(.title)
            
            Picker("Choose a number", selection: $selection.animation()) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 100, height: 200)
        }
    }
}

struct MyAnimateBindingValueView_Previews: PreviewProvider {
    static var previews: some View {
        MyAnimateBindingValueView()
    }
}
