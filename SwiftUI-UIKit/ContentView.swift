//
//  ContentView.swift
//  SwiftUI-UIKit
//
//  Created by Roman Romanov on 20.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = "This is default string"
    
    var body: some View {
        VStack {
            Text(message)
                .padding()
            TestView(message: $message)
        }
    }
}

#Preview {
    ContentView()
}
