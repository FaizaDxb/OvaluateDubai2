//
//  Switcher.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit
import Foundation


class Switcher {
    

    class func presentLogin(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.registration_Login.rawValue, bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
    class func presentRegistration(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.registration_Login.rawValue, bundle: nil).instantiateViewController(withIdentifier: "Register_SigninVc") as! Register_SigninVc
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
    class func presentRegistrationVC(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.registration_Login.rawValue, bundle: nil).instantiateViewController(withIdentifier: "RegistrationVC") as! RegistrationVC
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
    class func presentPasswordVC(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.registration_Login.rawValue, bundle: nil).instantiateViewController(withIdentifier: "PasswordVC") as! PasswordVC
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
    class func presentWelcomeVC(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.registration_Login.rawValue, bundle: nil).instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeVC
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
    class func presentHomeBaseVC(viewController: UIViewController?) {
        let  VC = UIStoryboard(name: Storyboard.Home.rawValue, bundle: nil).instantiateViewController(withIdentifier: "BaseVC") as! BaseVC
        let mainNavigationController = UINavigationController.init(rootViewController: VC)
        mainNavigationController.modalPresentationStyle = .fullScreen
        viewController?.present(mainNavigationController, animated: true, completion: nil)
    }
}
