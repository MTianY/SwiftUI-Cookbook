//
//  MyPresentModalView.swift
//  SwiftUITest
//
//  Created by TY on 9/13/23.
//

import SwiftUI

struct MyPresentModalView: View {
    @State private var isPresented = false
    @State private var selectedTab: Int = 0
    @State private var isTabViewHidden = false
    
    var body: some View {
        
        VStack {
            Button("Switch to second tab") {
                selectedTab = 1
            }
            .padding()
            
            Button {
                isTabViewHidden.toggle()
            } label: {
                Text(isTabViewHidden ? "Show Tab View" : "Hide Tab View")
            }
            .padding()
            
            if (!isTabViewHidden) {
                TabView(selection: $selectedTab) {
                    Text("First Tab")
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("Tab 1")
                        }
                        .tag(0)
                    
                    Text("Second Tab")
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Tab 2")
                        }
                        .tag(1)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onChange(of: selectedTab) { newValue in
                    isPresented = true
                }
                .sheet(isPresented: $isPresented) {
                    ModalView(isPresented: self.$isPresented)
                }
            }
            
        }
        
    }
}

struct ModalView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("This is a modal view.")
            .padding()
        Button("Dismiss") {
            isPresented = false
        }
    }
}

struct MyPresentModalView_Previews: PreviewProvider {
    static var previews: some View {
        MyPresentModalView()
    }
}
