//
//  RegistrationVC.swift
//  OvaluateDubai
//
//  Created by Apple on 14/06/2022.
//

import UIKit
import FlagPhoneNumber
import DPOTPView
class RegistrationVC: UIViewController {
    
//:-Mark outlets
   
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var otpView: UIView!
    @IBOutlet weak var otpFields: DPOTPView!
    @IBOutlet weak var firstNameTxt: UITextField!{
        didSet {
           
           
            firstNameTxt.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    @IBOutlet weak var phoneNumberLbl: UILabel!
    @IBOutlet weak var lastNameTxt: UITextField!{
        didSet {
           
           
            lastNameTxt.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    @IBOutlet weak var phoneTxt: FPNTextField!
    @IBOutlet weak var emailTxt: UITextField!{
        didSet {
           
           
            emailTxt.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setInterface()
    }
    func setInterface(){
        
        phoneTxt.setFlag(countryCode: .AD)
        blurView.isHidden = true
        
    }
    @IBAction func btnCloseAction(_ sender: UIButton) {
        blurView.isHidden = true
        Animout(Popview: otpView)
    }
    @IBAction func btnNextAction(_ sender: UIButton) {
        blurView.isHidden = false
        AnimIn(Popview: otpView)
    }
    
    @IBAction func btnOtpBackAction(_ sender: UIButton) {
        blurView.isHidden = true
        Animout(Popview: otpView)
    }
    @IBAction func btnOtpNextAction(_ sender: UIButton) {
        blurView.isHidden = true
        Animout(Popview: otpView)
        Switcher.presentPasswordVC(viewController: self)
        
    }
    
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
extension RegistrationVC
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

