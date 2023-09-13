//
//  MyColorPickerView.swift
//  SwiftUITest
//
//  Created by TY on 9/13/23.
//

import SwiftUI

struct MyColorPickerView: View {
    @State private var colorChoice = Color.white
    
    var body: some View {
        VStack {
            ColorPicker("Choose your color", selection: $colorChoice)
                .padding()
            
            Text("You chose:")
                .font(.title)
            
            Rectangle()
                .fill(colorChoice)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
    
}

struct MyColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        MyColorPickerView()
    }
}
