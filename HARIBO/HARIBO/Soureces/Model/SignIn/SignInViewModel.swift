import UIKit

class SignInViewModel {
    let clientID: String
    let redirectURI: String
    var completion: ((_ code: String) -> Void)?

    init(clientID: String, redirectURI: String) {
        self.clientID = clientID
        self.redirectURI = redirectURI
    }

    func handleGAuthCode(code: String) {
        completion?(code)
    }
}
