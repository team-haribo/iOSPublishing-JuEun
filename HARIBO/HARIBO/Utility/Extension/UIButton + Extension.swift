//
//  UIButton + Extension.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

extension UIButton {
    func setButton (color: CGColor, radius: CGFloat) {
        self.layer.backgroundColor = color
        self.layer.cornerRadius = radius
    }
    
//    func GAuthButton (auth: GAuthType, color: GAuthColorType, rounded: GAuthRounrdedType) {
//
//    }
}
