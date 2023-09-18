//
//  MyScrollViewView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyScrollViewView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Row \(index)")
                            .font(.title)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .font(.title)
                    }
                }
                .padding()
            }
            
        }
    }
}

struct MyScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollViewView()
    }
}
