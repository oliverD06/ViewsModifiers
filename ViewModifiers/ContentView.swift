//
//  ContentView.swift
//  ViewModifiers
//
//  Created by Oliver Delaney on 9/15/23.
//

import SwiftUI

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueTitleStyle() -> some View {
        self.modifier(BlueTitle())
    }
}

struct ContentView: View {
    
    var body: some View {
        Text("Large Blue Title")
            .blueTitleStyle()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
