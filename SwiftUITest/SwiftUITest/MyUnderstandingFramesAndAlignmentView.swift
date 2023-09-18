//
//  MyUnderstandingFramesAndAlignmentView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyUnderstandingFramesAndAlignmentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .frame(width: 300, height: 200, alignment: .bottomTrailing)
            .border(Color.red)
    }
}

struct MyUnderstandingFramesAndAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        MyUnderstandingFramesAndAlignmentView()
    }
}
