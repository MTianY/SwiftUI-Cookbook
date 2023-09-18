//
//  MyDeterminateProgressView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyDeterminateProgressView: View {
    
    @State private var downloadProgress = 0.0
    @State private var timer: Timer? = nil
    
    var body: some View {
        VStack {
            ProgressView("Downloading...", value: downloadProgress, total: 100)
                .progressViewStyle(.linear)
            Button("Start Download") {
                simulateDownload()
            }
        }
    }
    
    func simulateDownload() {
        timer?.invalidate()
        downloadProgress = 0.0
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { timer in
            if downloadProgress < 100 {
                downloadProgress += 1.0
            } else {
                timer.invalidate()
            }
        })
    }
    
}

struct MyDeterminateProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyDeterminateProgressView()
    }
}
