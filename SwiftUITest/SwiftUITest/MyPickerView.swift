//
//  MyPickerView.swift
//  SwiftUITest
//
//  Created by TY on 9/12/23.
//

import SwiftUI

struct MyPickerView: View {
    
    let options = ["Frida Kahlo", "Georgia O'Keeffe", "Mary cassatt", "Lee Krasner", "Helen Frankenthaler"]
    @State private var selectedOption = 0
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "paintpalette")
                    .foregroundColor(.blue)
                    .padding(.trailing, 4)
                
                Text("Favorite artist:")
                    .font(.title)
                
                Text(options[selectedOption])
                    .font(.title)
                    .padding(.leading, 4)
            }
            .padding()
            
            Picker("Options", selection: $selectedOption) {
                ForEach(options.indices, id: \.self) { index in
                    Text(options[index])
                        .font(.headline)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            
            Text("Selected date is: \(selectedDate)")
            
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
            
        }
    }
    
}

struct MyPickerView_Previews: PreviewProvider {
    static var previews: some View {
        MyPickerView()
    }
}
