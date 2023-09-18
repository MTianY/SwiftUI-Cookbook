//
//  MyZStackVStackView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyZStackVStackView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Top")
                    .padding()
                    .background(Color.green)
                Spacer()
                    .frame(height: 20)
                Text("Middle")
                    .padding()
                    .background(Color.yellow)
                Spacer()
                    .frame(height: 20)
                Text("Bottom")
                    .padding()
                    .background(Color.red)
            }
            
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.orange)
        }
    }
}

struct MyZStackVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyZStackVStackView()
    }
}
