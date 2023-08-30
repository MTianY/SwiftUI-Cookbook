//
//  MyLazyVGridView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct MyLazyVGridView: View {
    
    let items = ["Item1", "Item2", "Item3", "Item4", "Item5"]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
//        LazyVGrid(columns: columns, spacing: 16) {
//            ForEach(items, id: \.self) { item in
//                Text(item)
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 100)
//                    .background(.blue)
//                    .foregroundColor(.white)
//            }
//        }
//        .padding()
        
        
//        Text("Hello, World!")
//            .modifier(BoldAndItalicModifier())
        
        DiamondShape()
            .fill(Color.red)
            .frame(width: 200, height: 200)
        
    }
}

struct MyLazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        MyLazyVGridView()
    }
}


struct BoldAndItalicModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .italic()
    }
}


struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path.move(to: CGPoint(x: center.x, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: 0))
        
        return path
    }
}
