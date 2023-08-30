//
//  MyOpacityView.swift
//  SwiftUITest
//
//  Created by TY on 8/30/23.
//

import SwiftUI

struct MyOpacityView: View {
    var body: some View {
        VStack {
            Text("This text has full opacity.")
            Text("This text is partially transparent.")
                .opacity(0.5)
            Text("Hello,\nCircular View!")
                .multilineTextAlignment(.center)
                .padding(50)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 150, height: 150)
                    )
        }
    }
}

struct MyOpacityView_Previews: PreviewProvider {
    static var previews: some View {
        MyOpacityView()
    }
}
