//
//  PasswordVC.swift
//  OvaluateDubai
//
//  Created by Apple on 14/06/2022.
//

import UIKit

class PasswordVC: UIViewController {
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var pswdText: UITextField!{
        didSet {


            pswdText.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }

    }
    @IBOutlet weak var confirmPsswdText: UITextField!{
        didSet {
           
            
            confirmPsswdText.setIcon(UIImage(named : "cancel")!, tintcolor: .white)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnNextAction(_ sender: UIButton) {
        Switcher.presentWelcomeVC(viewController: self)
    }


}
