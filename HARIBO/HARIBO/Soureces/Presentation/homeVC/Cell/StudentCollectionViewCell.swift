import UIKit
import SnapKit
import Then

class StudentCollectionViewCell: UICollectionViewCell {
    
    let student = CustomStackView()
    
    let profileImage = UIImageView().then {
        $0.image = UIImage(systemName: "person.crop.circle.fill")
        $0.tintColor = .gray
    }
    
    let nameLabel = UILabel().then {
        $0.text = "김주은"
        $0.textColor = .black
        $0.font = UIFont(name: "Pretendard-Regular", size: 14)
    }
    
    let classNumLabel = UILabel().then {
        $0.text = "2102"
        $0.textColor = .lightGray
        $0.font = UIFont(name: "Pretendard-Regular", size: 12)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.frame = bounds
        addView()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView.frame = bounds
        addView()
        setLayout()
    }
    
    private func addView() {
        addSubview(student)
        
        [profileImage,nameLabel,classNumLabel].forEach{
            student.addSubview($0)
        }
    }
    
    private func setLayout() {
        student.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(135)
            $0.centerX.centerY.equalToSuperview()
        }
        profileImage.snp.makeConstraints {
            $0.width.equalTo(50)
            $0.height.equalTo(50)
            $0.top.equalTo(student.snp.top).offset(16)
            $0.centerX.equalTo(student)
        }
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(10)
            $0.centerX.equalTo(student)
        }
        classNumLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(5)
            $0.centerX.equalTo(student)
        }
    }
}
