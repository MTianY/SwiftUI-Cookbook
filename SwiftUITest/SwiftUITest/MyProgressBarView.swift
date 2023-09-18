//
//  MyProgressBarView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI
import Combine

struct MyProgressBarView: View {
    @State private var progress: CGFloat = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .orange))
                .scaleEffect(2.0, anchor: .center)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                    }
                }
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 300, height: 20)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(width: progress * 300, height: 20)
                    .foregroundColor(.green)
                    .animation(.easeInOut, value: progress)
            }
            .onReceive(timer) { _ in
                if progress < 1.0 {
                    progress += 0.01
                }
            }
        }
        
    }
}

struct MyProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressBarView()
    }
}
