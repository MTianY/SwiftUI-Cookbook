//
//  MyNavigationToolBarView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct MyNavigationToolBarView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
}

struct MyNavigationToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationToolBarView()
    }
}
