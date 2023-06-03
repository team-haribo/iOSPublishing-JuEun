//
//  SetStudentView.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

class SetStudentView: UIView {
    //init(frame: CGRect)은 프로그래밍 방식으로 뷰를 생성할 때 호출되는 초기화 메서드
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
            addView()
            setLayout()
        }
    
    private let studentView = UIView()
    
    let profileImage = UIImageView().then {
        $0.image = UIImage(systemName: "person.crop.circle.fill")
        $0.tintColor = .gray
    }
        
    let nameLabel = UILabel().then {
        $0.text = "김주은"
        $0.textColor = .black
        $0.font = UIFont(name: "pretendard-Regular", size: 15)
    }
        
    let classNumLabel = UILabel().then {
        $0.text = "2102"
        $0.textColor = .gray
        $0.font = UIFont(name: "pretendard-Regular", size: 12)
    }
    
    func addView() {
        addSubview(studentView)
        [profileImage, nameLabel, classNumLabel].forEach {
            studentView.addSubview($0)
        }
    }
    
    func setLayout() {
        studentView.snp.makeConstraints {
            $0.width.equalTo(110)
            $0.height.equalTo(130)
            $0.centerX.centerY.equalToSuperview()
        }
        
        profileImage.snp.makeConstraints {
            $0.width.equalTo(50)
            $0.height.equalTo(50)
            $0.top.equalTo(studentView.snp.top).offset(18)
            $0.centerX.equalTo(studentView)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(8)
            $0.centerX.equalTo(studentView)
        }
        
        classNumLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(4)
            $0.centerX.equalTo(studentView)
        }
    }
}
