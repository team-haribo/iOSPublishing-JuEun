import UIKit
import GAuthSignin

class IntroViewController: BaseViewController {
    
    private let GOMSImage = UIImageView().then {
        $0.image = UIImage(named: "GOMS")
    }
    
    private let GOMSLabel = UILabel().then {
        $0.text = "GOMS"
        $0.font = UIFont(name: "SFProText-Bold", size: 26)
        $0.textColor = .orangeCustom
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "간편한 수요 외출제 서비스"
        $0.font = UIFont(name: "SFProText-Semibold", size: 20)
        $0.textColor = .black
    }
    
    private let expLabel = UILabel().then {
        $0.text = "앱으로 간편하게 GSM의 \n 수요 외출제를 이용해 보세요!"
        $0.numberOfLines = 2
        $0.font = UIFont(name: "SFProText-Medium", size: 16)
        $0.textColor = .lightGrayCustom
        $0.textAlignment = .center
    }
    
    let gauthButton = GAuthButton(auth: .signup, color: .colored, rounded: .default)
    var clientID = "my_client_id"
    var redirectURI = "my_redirect_uri"
    var viewModel: SignInViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    override func addView() {
        [GOMSImage, GOMSLabel, titleLabel, expLabel, gauthButton].forEach {
            view.addSubview($0)
        }
        setupViewModel()
    }
    
    override func setLayout() {
        GOMSImage.snp.makeConstraints {
            $0.top.equalTo(view).offset(130)
            $0.centerX.equalTo(view)
            $0.width.equalTo(90)
            $0.height.equalTo(55)
        }
        
        GOMSLabel.snp.makeConstraints {
            $0.top.equalTo(GOMSImage.snp.bottom).offset(0)
            $0.centerX.equalTo(view)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(GOMSLabel.snp.bottom).offset(40)
            $0.centerX.equalTo(view)
        }
        
        expLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(15)
            $0.centerX.equalTo(view)
        }
        
        gauthButton.snp.makeConstraints {
            $0.bottom.equalTo(view).inset(60)
            $0.left.equalTo(view).offset(26)
            $0.right.equalTo(view).inset(26)
            $0.height.equalTo(60)
        }
    }
    
    func setupViewModel() {
        viewModel = SignInViewModel(clientID: clientID, redirectURI: redirectURI)
            
        if let completion = viewModel?.handleGAuthCode {
            gauthButton.prepare(
                clientID: viewModel?.clientID ?? "",
                redirectURI: viewModel?.redirectURI ?? "",
                presenting: self,
                completion: { code in
                    completion(code)
                }
            )
        }
    }
}
