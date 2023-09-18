//
//  MyLazyVHGridView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyLazyVHGridView: View {
    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        let rows = [
            GridItem(.fixed(100)),
            GridItem(.flexible())
        ]
        
        LazyHGrid(rows: rows, spacing: 20) {
            ForEach(0..<10) { index in
                Text("Item \(index)")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        
//        LazyVGrid(columns: columns, spacing: 20) {
//            ForEach(0..<10) { index in
//                Text("Item \(index)")
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//        }
    }
}

struct MyLazyVHGridView_Previews: PreviewProvider {
    static var previews: some View {
        MyLazyVHGridView()
    }
}
