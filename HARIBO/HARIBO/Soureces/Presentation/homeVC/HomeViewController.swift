//
//  HomeViewController.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

class HomeViewController: BaseViewController {
    private let gomsLabel = UILabel().then {
        $0.text = "GOMS"
        $0.textColor = .orangeCustom
        $0.font = UIFont(name: "pretendard-SemiBold", size: 22)
    }
    
    private let profileImage = UIImageView().then {
        $0.image = UIImage(systemName: "person.circle.fill")
        $0.tintColor = .orangeCustom
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "간편하게\n수요외출제를\n이용해 보세요!"
        $0.numberOfLines = 3
        $0.font = UIFont(name: "pretendard-SemiBold", size: 28)
    }
    
    private let titleImage = UIImageView().then {
        $0.image = UIImage(named: "people")
    }
    
    private let outingButton = UIButton().then {
        $0.setButton(color: UIColor.orangeCustom.cgColor, radius: 10)
    }
    
    private let statusView = UIView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
    }
    
    private let studentView = UIView().then {
        $0.backgroundColor = .lightGrayCustom
    }
    
    private let studentView1 = SetStudentView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
    }
    
    private let studentView2 = SetStudentView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
        $0.nameLabel.text = "신아인"
        $0.classNumLabel.text = "2211"
    }
    
    private let studentView3 = SetStudentView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
        $0.nameLabel.text = "선민재"
        $0.classNumLabel.text = "3111"
    }
    
    private let lateLabel = UILabel().then {
        $0.text = "지각의 전당"
        $0.textColor = .gray
        $0.font = UIFont(name: "pretendard-SemiBold", size: 28)
    }
    
    private let myView = UIView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [gomsLabel, profileImage, titleLabel, titleImage, outingButton, statusView, lateLabel, studentView, myView].forEach {
            view.addSubview($0)
        }
        
        [studentView1, studentView2, studentView3].forEach {
            studentView.addSubview($0)
        }
    }
    
    override func setLayout() {
        gomsLabel.snp.makeConstraints {
            $0.top.equalTo(view).offset(50)
            $0.left.equalTo(view).offset(30)
        }
        
        profileImage.snp.makeConstraints {
            $0.top.equalTo(view).offset(50)
            $0.right.equalTo(view).inset(30)
            $0.width.equalTo(28)
            $0.height.equalTo(28)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(gomsLabel.snp.bottom).offset(40)
            $0.left.equalTo(view).offset(30)
        }
        
        titleImage.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.width.equalTo(130)
            $0.height.equalTo(200)
        }
        
        outingButton.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(titleImage.snp.left).offset(-40)
            $0.height.equalTo(50)
        }
        
        statusView.snp.makeConstraints {
            $0.top.equalTo(titleImage.snp.bottom).offset(20)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.height.equalTo(75)
        }
        
        lateLabel.snp.makeConstraints {
            $0.bottom.equalTo(studentView.snp.top).offset(-30)
            $0.left.equalTo(view).offset(30)
        }
        
        studentView.snp.makeConstraints {
            $0.top.equalTo(lateLabel.snp.bottom).offset(20)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.bottom.equalTo(myView.snp.top).offset(-30)
        }
        
        studentView1.snp.makeConstraints {
            $0.top.equalTo(studentView).offset(0)
            $0.bottom.equalTo(studentView).inset(0)
            $0.left.equalTo(studentView).offset(0)
            $0.right.equalTo(studentView2.snp.left).offset(-14)
        }
        
        studentView2.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(120)
            $0.top.equalTo(studentView).offset(0)
            $0.bottom.equalTo(studentView).inset(0)
            $0.centerX.equalTo(studentView)
        }
        
        studentView3.snp.makeConstraints {
            $0.top.equalTo(studentView).offset(0)
            $0.bottom.equalTo(studentView).inset(0)
            $0.left.equalTo(studentView2.snp.right).offset(14)
            $0.right.equalTo(studentView).inset(0)
        }
        
        myView.snp.makeConstraints {
            $0.bottom.equalTo(view).inset(130)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.height.equalTo(75)
        }
    }
}
