//
//  MyTextFieldView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

struct MyTextFieldView: View {
    @State private var name = ""
    @State private var password = ""
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .foregroundColor(.blue)
                .background(.yellow)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .keyboardType(.phonePad)
                .submitLabel(.done)
                .onSubmit {
                    print("Name entered: \(name)")
                }
            
            SecureField("Enter your password", text: $password)
                .textContentType(.password)
                .padding()
                .background(RoundedRectangle(cornerRadius: 5).stroke())
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .background(.yellow)
                .font(.largeTitle)
        }
    }
}

struct MyTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextFieldView()
    }
}
