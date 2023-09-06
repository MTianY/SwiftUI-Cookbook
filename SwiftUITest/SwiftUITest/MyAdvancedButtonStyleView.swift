//
//  MyAdvancedButtonStyleView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct MyAdvancedButtonStyleView: View {
    
    @State private var isPressed = false
    
    var body: some View {
        VStack {
            Button(action: {
                isPressed.toggle()
            }) {
                Text("3D Button")
            }
            .font(.title)
            .frame(width: 200, height: 50)
            .background(
                ZStack {
                    Color(isPressed ? .gray : .blue)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.white, Color(.white).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .padding(2)
                        .blur(radius: 2)
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(color: Color(isPressed ? .blue : .gray).opacity(0.3), radius: 20, x:20, y: 20)
            .shadow(color: Color(isPressed ? .blue : .gray).opacity(0.2), radius: 20, x:-20, y: -20)
            .scaleEffect(isPressed ? 0.95 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1), value: isPressed)
            .foregroundColor(isPressed ? .blue : .white)
        }
    }
}

struct MyAdvancedButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        MyAdvancedButtonStyleView()
    }
}
