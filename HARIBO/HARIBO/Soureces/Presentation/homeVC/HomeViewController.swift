import UIKit

class HomeViewController: BaseViewController {
    private let gomsLabel = UILabel().then {
        $0.setLabel(text: "GOMS", fName: "pretendard-SemiBold", size: 22)
        $0.textColor = .orangeCustom
    }
    
    private let profileImage = UIImageView().then {
        $0.image = UIImage(systemName: "person.circle.fill")
        $0.tintColor = .orangeCustom
    }
    
    private let titleLabel = UILabel().then {
        
        $0.setLabel(text: "간편하게\n수요외출제를\n이용해 보세요!", fName: "pretendard-SemiBold", size: 28)
        $0.numberOfLines = 3
    }
    
    private let titleImage = UIImageView().then {
        $0.image = UIImage(named: "people")
    }
    
    private let outingButton = UIButton().then {
        $0.setButton(color: UIColor.orangeCustom.cgColor, radius: 10)
    }
    
    private let outingLabel = CustomLabel().then {
        
        $0.text = "외출금지"
        $0.textColor = .red
        $0.font = UIFont(name: "pretendard-Regular", size: 13)
        $0.backgroundColor = .white
        $0.layer.borderColor = UIColor.red.cgColor
        $0.layer.borderWidth = 1
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 12
    }
    
    private let statusView = UIView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
    }
    
    private let statusLabel1 = UILabel().then {
        $0.setLabel(text: "현재 183명의 학생 중에서", fName: "pretendard-Regular", size: 14)
        $0.textColor = .lightGray
    }
    
    private let statusLabel2 = UILabel().then {
        $0.setLabel(text: "48", fName: "pretendard-Regular", size: 20)
        $0.textColor = .orangeCustom
    }
    
    private let statusLabel3 = UILabel().then {
        $0.setLabel(text: "명이 외출 중이에요!", fName: "pretendard-Regular", size: 20)
    }
    
    private let statusChevron = UIImageView().then {
        $0.image = UIImage(systemName: "chevron.right")
        $0.tintColor = .orangeCustom
    }
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    private let lateLabel = UILabel().then {
        $0.setLabel(text: "지각의 전당", fName: "pretendard-SemiBold", size: 28)
        $0.textColor = .gray
    }
    
    private let myView = UIView().then {
        $0.setView(color: UIColor.white.cgColor, cRadius: 10, sRadius: 5, wSize: 0, hSize: 2, sOpacity: 0.1)
    }
    
    private let myProfileImage = UIImageView().then {
        $0.image = UIImage(systemName: "person.crop.circle.fill")
        $0.tintColor = .gray
    }
    
    private let myNameLabel = UILabel().then {
        $0.setLabel(text: "김주은", fName: "pretendard-Regular", size: 15)
    }
    
    private let myClassNumLabel = UILabel().then {
        $0.setLabel(text: "2학년 1반 2번", fName: "pretendard-Regular", size: 13)
        $0.textColor = .lightGray
    }
    
    private let myChevron = UIImageView().then {
        $0.image = UIImage(systemName: "chevron.right")
        $0.tintColor = .orangeCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(StudentCollectionViewCell.self, forCellWithReuseIdentifier: "StudentsCollectionViewCell")
        
        [gomsLabel, profileImage, titleLabel, titleImage, outingButton, statusView, lateLabel, collectionView, myView].forEach {
            view.addSubview($0)
        }
        
        outingButton.addSubview(outingLabel)
        
        [statusLabel1, statusLabel2, statusLabel3, statusChevron].forEach {
            statusView.addSubview($0)
        }
        
        [myProfileImage, myNameLabel, myClassNumLabel, myChevron].forEach {
            myView.addSubview($0)
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
            $0.width.height.equalTo(28)
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
        
        outingLabel.snp.makeConstraints {
            $0.centerX.centerY.equalTo(outingButton)
            $0.width.equalTo(70)
            $0.height.equalTo(23)
        }
        
        statusView.snp.makeConstraints {
            $0.top.equalTo(titleImage.snp.bottom).offset(20)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.height.equalTo(75)
        }
        
        statusLabel1.snp.makeConstraints {
            $0.top.equalTo(statusView).offset(13)
            $0.left.equalTo(statusView).offset(15)
        }
        
        statusLabel2.snp.makeConstraints {
            $0.top.equalTo(statusView).offset(35)
            $0.left.equalTo(statusView).offset(15)
        }

        statusLabel3.snp.makeConstraints {
            $0.top.equalTo(statusView).offset(35)
            $0.left.equalTo(statusView).offset(45)
        }
        
        statusChevron.snp.makeConstraints {
            $0.centerY.equalTo(statusView)
            $0.right.equalTo(statusView).inset(20)
            $0.width.equalTo(15)
            $0.height.equalTo(20)
        }
        
        lateLabel.snp.makeConstraints {
            $0.bottom.equalTo(collectionView.snp.top).offset(-20)
            $0.left.equalTo(view).offset(30)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(lateLabel.snp.bottom).offset(20)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.bottom.equalTo(myView.snp.top).offset(-30)
            $0.height.equalTo(140)
        }
        
        myView.snp.makeConstraints {
            $0.bottom.equalTo(view).inset(130)
            $0.left.equalTo(view).offset(30)
            $0.right.equalTo(view).inset(30)
            $0.height.equalTo(75)
        }
        
        myProfileImage.snp.makeConstraints {
            $0.centerY.equalTo(myView)
            $0.left.equalTo(myView).offset(15)
            $0.width.height.equalTo(50)
        }
        
        myNameLabel.snp.makeConstraints {
            $0.top.equalTo(myView).offset(20)
            $0.left.equalTo(myProfileImage.snp.right).offset(15)
        }
        
        myClassNumLabel.snp.makeConstraints {
            $0.top.equalTo(myNameLabel.snp.bottom).offset(5)
            $0.left.equalTo(myProfileImage.snp.right).offset(15)
        }
        
        myChevron.snp.makeConstraints {
            $0.centerY.equalTo(myView)
            $0.right.equalTo(myView).inset(20)
            $0.width.equalTo(15)
            $0.height.equalTo(20)
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StudentsCollectionViewCell", for: indexPath) as! StudentCollectionViewCell
        
        let nameLabel: String
        let classNumLabel: String
        
        if indexPath.item == 0 {
            nameLabel = "김주은"
            classNumLabel = "2102"
        }
        else if indexPath.item == 1 {
            nameLabel = "신아인"
            classNumLabel = "2211"
        }
        else {
            nameLabel = "선민재"
            classNumLabel = "3111"
        }
        
        cell.nameLabel.text = nameLabel
        cell.classNumLabel.text = classNumLabel
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
}
