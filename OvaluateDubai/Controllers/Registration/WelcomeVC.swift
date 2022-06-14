//
//  WelcomeVC.swift
//  OvaluateDubai
//
//  Created by Apple on 14/06/2022.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnContinueAction(_ sender: UIButton) {
        Switcher.presentHomeBaseVC(viewController: self)
    }
    

}
