//
//  UILabel + Extension.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

extension UILabel {
    func setLabel (text: String, fName: String, size: CGFloat) {
        self.text = text
        self.font = UIFont(name: fName, size: size)
    }
    
//    func setPadding(_ padding: UIEdgeInsets) {
//        let paddedRect = bounds.inset(by: padding)
//        self.drawText(in: paddedRect)
//    }
}

class CustomLabel: UILabel {
    private let padding = UIEdgeInsets(top: 15, left: 10, bottom: 10, right: 15)
        
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }
}
