//
//  MyNavigationBarProgressView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyNavigationBarProgressView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World!")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ProgressView()
//                        .progressViewStyle(LinearProgressViewStyle(tint: Color.blue))
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
                }
            }
        }
    }
}

struct MyNavigationBarProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationBarProgressView()
    }
}
