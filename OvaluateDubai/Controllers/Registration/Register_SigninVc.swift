//
//  Register_SigninVc.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit
import GoogleSignIn
import AuthenticationServices
class Register_SigninVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setInterface()
        // Do any additional setup after loading the view.
    }
    func  setInterface() {
        self.navigationController?.navigationBar.isHidden = true
    }
    @IBAction func btnCreateAccount(_ sender: UIButton) {
        Switcher.presentRegistrationVC(viewController: self)
    }
    @IBAction func btnEmailLogin(_ sender: UIButton) {
        Switcher.presentLogin(viewController: self)
    }
    @IBAction func googleLoginAction(_ sender: UIButton) {
//        let signInConfig = GIDConfiguration.init(clientID: Config.googleSignInClientID)
//        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
//            guard error == nil else { return }
//            print(user?.profile?.email)
//            print(user?.profile?.name)
//            
//            
//            if let imageUrl = user?.profile?.imageURL(withDimension: 100) {
//                let userImage = imageUrl.absoluteString
//               print(userImage)
//                
//            }
//            
//            
//        }

    }
        
  
    @IBAction func appleLoginAction(_ sender: Any) {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.performRequests()
    }
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as?  ASAuthorizationAppleIDCredential {
            let fullName = appleIDCredential.fullName?.givenName
            let email = appleIDCredential.email
            
        }
    }
    

}
extension Register_SigninVc : ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
    // Handle error.
    }
}
