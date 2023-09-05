//
//  MyEnvironmentView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI

enum Theme {
    case light, dark
}

struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get {
            self[ThemeKey.self]
        }
        
        set {
            self[ThemeKey.self] = newValue
        }
    }
}

extension View {
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

struct MyEnvironmentView: View {
    
    @State var theme: Theme = .light
    
    var body: some View {
        VStack {
            Button("Switch Theme") {
                switch theme {
                case .dark:
                    theme = .light
                case .light:
                    theme = .dark
                }
            }
            ThemedView()
        }
        .theme(theme)
    }
    
}

struct ThemedView: View {
    
    @Environment(\.theme) var theme: Theme
    
    var body: some View {
        VStack {
            if theme == .light {
                Text("Light Theme")
                    .foregroundColor(.black)
                    .background(Color.white)
            } else {
                Text("Dark Theme")
                    .foregroundColor(.white)
                    .background(.black)
            }
        }
        .padding()
    }
    
}

struct MyEnvironmentView_Previews: PreviewProvider {
    
    static var previews: some View {
        MyEnvironmentView()
    }
}
