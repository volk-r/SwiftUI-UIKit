//
//  TestUIKitView.swift
//  SwiftUI-UIKit
//
//  Created by Roman Romanov on 21.11.2024.
//

import UIKit

class TestUIKitView: UIView {
    
    var message: String = ""
    
    var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        return textField
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = .orange
        
        self.addSubview(textField)
        textField.text = message
        textField.frame.size = CGSize(width: 200, height: 100)
        textField.center = self.center
    }
}
