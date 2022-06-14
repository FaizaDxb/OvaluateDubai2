//
//  LoginVC.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit

class LoginVC: UIViewController {
     
    //:-Mark Outlets
    
    @IBOutlet weak var passwordTxt: UITextField!{
        didSet {
           
            
            passwordTxt.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    @IBOutlet weak var emailTxt: UITextField!{
        didSet {
           
            
            emailTxt.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    @IBOutlet weak var blurview: UIVisualEffectView!
    @IBOutlet var ForgotPasswordview: UIView!
    @IBOutlet var TermsAndConditionView: UIView!
    @IBOutlet weak var Forgotemail: UITextField!{
        didSet {
           
            
            Forgotemail.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   //:-Mark Actions
    @IBAction func btnTermsAndConditionsViewClose(_ sender: UIButton) {
        blurview.isHidden = true
        Animout(Popview: TermsAndConditionView)
    }
    @IBAction func btnForgotPsswdViewClose(_ sender: UIButton) {
        blurview.isHidden = true
        Animout(Popview: ForgotPasswordview)
    }
    @IBAction func btntermsCondition(_ sender: UIButton) {
        blurview.isHidden = false
        AnimIn(Popview: TermsAndConditionView)
    }
    @IBAction func btnForgotPsswd(_ sender: UIButton) {
        blurview.isHidden = false
        AnimIn(Popview: ForgotPasswordview)
    }
    @IBAction func btnRegisterNow(_ sender: UIButton) {
        Switcher.presentRegistrationVC(viewController: self)
    }
    @IBAction func btnSecureTxtEntry(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        passwordTxt.isSecureTextEntry = !sender.isSelected
        
    }
    
    @IBAction func btnContinueAction(_ sender: UIButton) {
        Switcher.presentHomeBaseVC(viewController: self)
    }
    
}
extension LoginVC
{
    func AnimIn(Popview:UIView)
    {
        view.addSubview(Popview)
        Popview.center = self.view.center
        Popview.transform = CGAffineTransform.init(scaleX: 1.3, y:1.3)
        Popview.alpha=0
       
        UIView.animate(withDuration: 0.6)
        {
           
            Popview.alpha = 1
            Popview.transform = CGAffineTransform.identity
        }
    }
    
    func Animout(Popview:UIView)
    {
        Popview.alpha = 1
       
        UIView.animate(withDuration: 0.6)
        {
            
            Popview.alpha=0
            Popview.transform = CGAffineTransform.identity
        }
        
    }
    
}

