//
//  MyAnimationView.swift
//  SwiftUITest
//
//  Created by TY on 9/20/23.
//

import SwiftUI

struct MyAnimationView: View {
    @State private var isAnimated = false
    @State private var opacity: Double = 0.0
    @State var offset = CGSize(width: 0, height: 0)
    @State private var rotate = false
    @State private var scale: CGFloat = 1.0
    @State private var angle: Double = 0.0
    @State private var isAnimating = false
    @State private var isAnimating2 = false
    
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .opacity(opacity)
                .font(.largeTitle)
                .padding()
            
            Button(opacity == 0.0 ? "Fade In" : "Fade Out") {
                withAnimation(.easeInOut(duration: 2)) {
                    opacity = opacity == 0.0 ? 1.0 : 0.0
                }
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.linear(duration: 1), value: isAnimated)
                .onTapGesture {
                    isAnimated.toggle()
                }
            
            Image(systemName: "arrow.up")
                .font(.largeTitle)
                .offset(offset)
                .animation(.spring(), value: offset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            offset = value.translation
                        })
                        .onEnded({ _ in
                            withAnimation {
                                offset = .zero
                            }
                        })
                )
            
            Button {
                rotate.toggle()
            } label: {
                Text("Rotate")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            }
            .rotation3DEffect(.degrees(rotate ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .animation(.easeInOut(duration: 0.5), value: rotate)
            
            
            Button("Tap me!") {
                scale += 0.5
            }
            .scaleEffect(scale)
            .animation(.easeInOut(duration: 0.2), value: scale)
            
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 150, height: 150)
                .rotationEffect(.degrees(angle))
                .onTapGesture {
                    angle += 360
                }
                .animation(.spring(response: 0.5, dampingFraction: 0.4), value: angle)
            
            
            Button("Animate") {
                withAnimation(.easeInOut(duration: 2).delay(1)) {
                    isAnimating.toggle()
                }
            }
            .padding()
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 10)
                .foregroundColor(.blue)
                .frame(width: isAnimating ? 300 : 100, height: isAnimating ? 300 : 100)
                .animation(.easeInOut(duration: 2), value: isAnimating)
            
            Circle()
                .fill(.blue)
                .frame(width: 50, height: 50)
                .scaleEffect(isAnimating2 ? 1.5 : 1)
                .animation(
                    isAnimating2 ?
                        .easeInOut(duration: 1).repeatForever(autoreverses: true) :
                        .default,
                    value: isAnimating2
                )
                .onAppear {
                    isAnimating2 = true
                }
        }
    }
}

struct MyAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MyAnimationView()
    }
}
