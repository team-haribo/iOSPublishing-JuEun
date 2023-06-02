//
//  UIView + Extension.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

extension UIView {
    func setView (color: CGColor, cRadius: CGFloat, sRadius: CGFloat, wSize: CGFloat, hSize: CGFloat, sOpacity: Float) {
        self.layer.backgroundColor = color
        self.layer.cornerRadius = cRadius
        self.layer.shadowRadius = sRadius
        self.layer.shadowOffset = CGSize(width: wSize, height: hSize)
        self.layer.shadowOpacity = sOpacity
    }
}
