//
//  BaseViewController.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit
import SnapKit
import Then

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGrayCustom
        
        addView()
        setLayout()
        setView()
        addTarget()
    }
    
    func addView(){}
    func setLayout(){}
    func setView(){}
    func addTarget(){}
}
