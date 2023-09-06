//
//  MyTemplateImageView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyTemplateImageView: View {
    @State private var isSelected = false
    @State private var changeColor = false
    var body: some View {
        VStack {
            Button(action: {
                isSelected.toggle()
            }) {
                Image("original")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundColor(isSelected ? .brown : .gray)
            }
            
            Image("Kodeco")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(changeColor ? .purple : .gray)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        changeColor.toggle()
                    }
                }
            
            Button("Submit") {
                
            }
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(5)
        }
    }
}

struct MyTemplateImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyTemplateImageView()
    }
}
