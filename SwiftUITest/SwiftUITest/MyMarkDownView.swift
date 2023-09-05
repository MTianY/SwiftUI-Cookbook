//
//  MyMarkDownView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""

let attributedQuote = try! AttributedString(markdown: quote)

struct MyMarkDownView: View {
    var body: some View {
        VStack {
            // Markdown 直接放到 Text 里
            Text("**Bold** and _italic_ text!")
            
            // AttributedString 进行高级样式设置
            Text(attributedQuote)
                .font(.system(size: 16, weight: .medium, design: .serif))
                .foregroundColor(.blue)
            
            Text("Rock Lobster")
                .font(.custom("Lobster-Regular", size: 36))
        }
    }
}

struct MyMarkDownView_Previews: PreviewProvider {
    static var previews: some View {
        MyMarkDownView()
    }
}
