//
//  MyView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 50)
                .background(
                    Image("original")
                        .resizable(resizingMode: .tile)
                        .opacity(0.25)
                )
                .fontWeight(.heavy)
                .border(Color.black, width: 2)
            
            Text("Hello, Shadows!")
                .font(.largeTitle)
                .padding()
                .background(Color.white)
                .shadow(radius: 10)
//            Circle()
//                .fill(Color.blue)
//                .shadow(color: .purple, radius: 10, x:0, y:0)
//                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Text("Hello, ClipShape!")
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text("Circle")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .clipShape(Circle())
            
            Text("Ellipse")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .clipShape(Ellipse())
            
            Text("Capsule")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
            
            Text("Custom")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.yellow)
                .foregroundColor(.black)
                .clipShape(CustomShape())
        }
        
    }
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
