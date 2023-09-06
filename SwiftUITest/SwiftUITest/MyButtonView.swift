//
//  MyButtonView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyButtonView: View {
    
    @State private var isOn = false
    @State private var isButtonDisabled = true
    
    var body: some View {
        VStack {
            
            HStack {
                Button("Press me!") {
                    buttonTapped()
                }
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .font(.title2)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .disabled(isButtonDisabled)
                
                Button(action: {
                    
                }) {
                    Image("original")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                Toggle(isOn: $isOn) {
                    Text("Switch state")
                }
                .toggleStyle(.switch)
                .padding()
            }
            
            Divider()
            
            VStack {
                Button("Red", action: {})
                    .foregroundColor(.red)
                Button("Green",action: {})
                    .foregroundColor(.green)
                Button("Blue", action: {})
                    .foregroundColor(.blue)
                Button("\(isButtonDisabled ? "Enable" : "Disable") button") {
                    isButtonDisabled.toggle()
                }
                .padding()
                
                Button(action: {
                    
                }) {
                    Label("Show Some Love!", systemImage: "heart.fill")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
//                FullScreenButtonView()
            }
            
        }
    }
    
    func buttonTapped() {
        print("button was tapped")
    }
    
}

struct FullScreenButtonView: View {
    var body: some View {
        Button(action: {
            print("Full Screen Button Tapped")
        }) {
            Text("Full Screen Button")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.blue)
        .foregroundColor(Color.white)
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView()
    }
}
