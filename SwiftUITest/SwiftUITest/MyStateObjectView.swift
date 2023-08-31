//
//  MyStateObjectView.swift
//  SwiftUITest
//
//  Created by TY on 8/31/23.
//

import SwiftUI

struct MyStateObjectView: View {
    
    // StateObject 告诉 SwiftUI 在视图的生命周期内保留此对象, 即使刷新或重新创建视图也是如此
    @StateObject private var timerManager = TimerManager()
    
    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)")
            Button {
                timerManager.start()
            } label: {
                Text("Start Timer")
            }
            Button {
                timerManager.stop()
            } label: {
                Text("Stop Timer")
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))

        }
    }
}

struct MyStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        MyStateObjectView()
    }
}

// TimerManager 管理计时器的类
class TimerManager : ObservableObject {
    @Published var timerCount = 0
    private var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.timerCount += 1
        })
    }
    
    func stop() {
        timer.invalidate()
    }
    
}
