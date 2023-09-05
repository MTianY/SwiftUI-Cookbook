//
//  MyTextView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyTextView: View {
    var body: some View {
        VStack {
            
            Text("Hello, World!")
                .fontWeight(.semibold)
                .italic()
                .underline()
                .strikethrough(true, color: .red)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .italic()
            + Text("World")
                .underline()
            
            Text("Hello, World!")
                .font(.custom("Papyrus", size: 24))
                .foregroundColor(.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Hello!\nWelcome to our app. We're so glad you're here. \n\nYou will love everything we have to offer.")
                .font(.custom("Papyrus", size: 18))
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .lineLimit(.bitWidth)
                .multilineTextAlignment(.center)
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
