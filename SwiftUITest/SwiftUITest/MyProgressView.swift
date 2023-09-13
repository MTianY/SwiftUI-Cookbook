//
//  MyProgressView.swift
//  SwiftUITest
//
//  Created by TY on 9/6/23.
//

import SwiftUI

struct ContentView2: View {
    
    @State private var numbers: [Int] = Array(1...20)
    @State private var isLoading = false
    @State private var isFinished = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(numbers, id: \.self) { number in
                    Text("Row \(number)")
                }
                
                if !isFinished {
                    ProgressView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.black)
                        .foregroundColor(.red)
                        .onAppear {
                            loadMoreContent()
                        }
                }
                
            }
            .navigationTitle("Infinite List")
        }
    }
    
    func loadMoreContent() {
        if !isLoading {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                let moreNumbers = numbers.count + 1...numbers.count + 20
                numbers.append(contentsOf: moreNumbers)
                isLoading = false
                if numbers.count > 250 {
                    isFinished = true
                }
            }
        }
    }
    
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
