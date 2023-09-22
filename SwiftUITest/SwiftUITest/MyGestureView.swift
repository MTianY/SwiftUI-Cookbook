//
//  MyGestureView.swift
//  SwiftUITest
//
//  Created by TY on 9/20/23.
//

import SwiftUI

struct MyGestureView: View {
    
    @State private var countdown = 10
    @State private var circlePosition = CGPoint(x:100, y:100)
    
    var body: some View {
        VStack {
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.orange.gradient)
            
            Text("\(countdown) until launch")
                .padding()
            
            Text("Tap and hold me!")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .onLongPressGesture(minimumDuration: 1) {
                    print("Long press detected!")
                }
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .position(circlePosition)
                .gesture(
                    DragGesture()
                        .onChanged({ gesture in
                            self.circlePosition = gesture.location
                        })
                )
            
        }
        .onTapGesture {
            if self.countdown > 0 {
                self.countdown -= 1
            }
        }
    }
}

struct MyGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MyGestureView()
    }
}
