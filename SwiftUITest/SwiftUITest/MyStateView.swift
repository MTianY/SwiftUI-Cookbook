//
//  MyStateView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct MyStateView: View {
    
//    @State private var isSwitchedOn = false
//
//    var body: some View {
//        VStack {
//            Toggle(isOn: $isSwitchedOn) {
//                Text("Turn me on or off")
//            }
//            if isSwitchedOn {
//                Text("The switch is on!")
//            }
//        }
//        .padding()
//    }
    
    @State private var selectedColor = Color.red
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100, alignment: .center)
            ColorPickerView(selectedColor: $selectedColor)
        }
        .padding()
    }
    
}

struct ColorPickerView: View {
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
    
    
}

struct MyStateView_Previews: PreviewProvider {
    static var previews: some View {
        MyStateView()
    }
}
