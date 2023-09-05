//
//  MyCombineView.swift
//  SwiftUITest
//
//  Created by TY on 8/31/23.
//

import SwiftUI
import Combine

/**
 Combine
 
 函数式响应框架.
 提供一个声明性 API, 处理随时间变化的值. 这些值可表示用户界面事件、网络响应、计划事件和许多其他类型的异步数据.
 
 组合核心: 发布者和订阅者.
 发布者: 发出事件
 订阅者: 监听事件
 */

struct MyCombineView: View {
    
    @StateObject private var jokeFetcher = JokeFetcher()
    
    var body: some View {
        VStack {
            Text(jokeFetcher.joke)
                .padding()
            Button("Fetch Joke") {
                jokeFetcher.fetchJoke()
            }
        }
        
        .onAppear {
            jokeFetcher.fetchJoke()
        }
        
    }
}

struct MyCombineView_Previews: PreviewProvider {
    static var previews: some View {
        MyCombineView()
    }
}

class JokeFetcher: ObservableObject {
    @Published var joke: String = ""
    private var cancellable : AnyCancellable?
    private let jokes = [
        "Why don't scientists trust atoms? Because they make up everything!",
        "Why did the bicycle fall over? Because it was two tired!",
        "Why don't some animals play cards? Because they are afraid of cheetahs!",
        "Why did the scarecrow win an award? Because he was outstanding in his field!"
    ]
    
    func fetchJoke() {
        if let randomJoke = jokes.randomElement() {
            joke = randomJoke
        }
    }
    
    deinit {
        cancellable?.cancel()
    }
    
}
