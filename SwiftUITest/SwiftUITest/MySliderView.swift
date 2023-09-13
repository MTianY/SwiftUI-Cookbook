//
//  MySliderView.swift
//  SwiftUITest
//
//  Created by TY on 9/12/23.
//

import SwiftUI

struct MySliderView: View {
    
    @State private var value: Double = 0.5
    @State private var selection = 0
    @State var progressValue = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
            Text("Value: \(value, specifier: "%.2f")")
            
            Picker(selection: $selection, label: Text("Picker")) {
                Text("Option 1").tag(0)
                Text("Option 2").tag(1)
                Text("Option 3").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            ProgressView(value: progressValue)
                .padding()
            
            Button("Start Download") {
                for i in 1...100 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) / 10.0) {
                        progressValue = Double(i) / 100.0
                    }
                }
            }
            
        }
    }
}

struct MySliderView_Previews: PreviewProvider {
    static var previews: some View {
        MySliderView()
    }
}
