//
//  TestView.swift
//  SwiftUI-UIKit
//
//  Created by Roman Romanov on 21.11.2024.
//

import SwiftUI

struct TestView: UIViewRepresentable {
    @Binding var message: String
    
    func makeUIView(context: Context) -> TestUIKitView {
        let uiView = TestUIKitView()
        uiView.textField.delegate = context.coordinator
        return uiView
    }
    
    func updateUIView(_ uiView: TestUIKitView, context: Context) {
        uiView.message = message
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: TestView
            
        init(_ parent: TestView) {
            self.parent = parent
        }

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if let currentValue = textField.text as NSString? {
                let newValue = currentValue.replacingCharacters(in: range, with: string) as String
                self.parent.message = newValue // 3
            }
            return true
        }
    }
}

#Preview {
    @Previewable @State var message: String = "This is string"
    TestView(message: $message)
}
