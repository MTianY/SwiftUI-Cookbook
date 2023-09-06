//
//  MyBlendView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyBlendView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
//        ZStack {
//            Image("Kodeco")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//
//            Image("original")
//                .resizable()
//                .scaledToFill()
//                .blendMode(.multiply)
//                .opacity(0.7)
//        }
        
        Image("original")
            .resizable()
            .scaledToFit()
            .scaleEffect(isAnimating ? 1.5 : 1.0)
            .onAppear() {
                withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                    isAnimating = true
                }
            }

    }
}

struct MyBlendView_Previews: PreviewProvider {
    static var previews: some View {
        MyBlendView()
    }
}
