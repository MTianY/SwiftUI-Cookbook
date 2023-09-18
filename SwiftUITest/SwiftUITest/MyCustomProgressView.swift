//
//  MyCustomProgressView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyCustomProgressView: View {
    @State private var progress: CGFloat = 0.5
    var body: some View {
        VStack {
            CustomProgressView(progress: progress)
                .frame(height: 10)
                .padding(.horizontal, 50)
            
            Button {
                progress += 0.1
            } label: {
                Text("Increase Progress")
            }

        }
    }
}

struct CustomProgressView: View {
    let progress: CGFloat
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 10)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(
                        width: min(progress * geometry.size.width, geometry.size.width),
                        height: 10
                    )
                    .foregroundColor(.blue)
            }
        }
    }
}

struct MyCustomProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomProgressView()
    }
}
