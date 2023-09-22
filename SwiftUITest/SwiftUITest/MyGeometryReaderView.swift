//
//  MyGeometryReaderView.swift
//  SwiftUITest
//
//  Created by TY on 9/18/23.
//

import SwiftUI

struct MyGeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(0..<10) { i in
                    Rectangle()
                        .fill(.blue)
                        .frame(
                            width: geometry.size.width * CGFloat(i + 1)/10,
                            height: geometry.size.height/10
                        )
                }
            }
        }
    }
}

struct MyGeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderView()
    }
}
