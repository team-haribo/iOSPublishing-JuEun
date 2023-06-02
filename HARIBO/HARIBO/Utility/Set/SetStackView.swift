//
//  SetStackView.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

class SetStackView: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
        
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        alignment = .fill
        backgroundColor = .white
        distribution = .equalSpacing
        layer.cornerRadius = 10
        spacing = 8
        
        layer.shadowColor = UIColor.black.cgColor
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.1
    }
}
