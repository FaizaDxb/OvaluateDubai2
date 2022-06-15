//
//  BaseVC.swift
//  OvaluateDubai
//
//  Created by Faiza's Macbook Pro on 14/06/2022.
//

import UIKit

class BaseVC: UIViewController {
    // MARK:- outlets
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lblSettings: UILabel!
    @IBOutlet weak var lblBlogs: UILabel!
    @IBOutlet weak var lblValuation: UILabel!
    @IBOutlet weak var lblInspection: UILabel!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var btnBlogs: UIButton!
    @IBOutlet weak var btnValuation: UIButton!
    @IBOutlet weak var btnInspection: UIButton!
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnSettings: UIButton!
    
    
    // MARK:- Local Variables
    var currentControllerName = "HomeVc"
    
    
    //MARK:- ViewControllesa variables
    
    let storyBoard = UIStoryboard(name: "Home", bundle: Bundle.main)
    
    
    lazy var HomeVC: HomeVc = {
        let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVc") as! HomeVc
        self.addChild(vc)
        return vc
    }()
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
      addChildViewController(VC: HomeVC)
       
        NotificationCenter.default.addObserver(self, selector: #selector(sideMenuSelectedOption(notification:)), name: NSNotification.Name(rawValue: "post"), object: nil)
        
    }
    @objc func sideMenuSelectedOption(notification : NSNotification) {
        
        let selectedController = notification.userInfo!["name"]! as! String
       
        
        print(selectedController)
        
        if selectedController == "LogOut" {
            
        }
        
       
        //========= removing ViewController from Container View
        if currentControllerName == selectedController {
            return
        }else{
            switch currentControllerName {
            case  "HomeVC":                                // Actual VC name (Capital)
                removeVC(VC:HomeVC)                      // local variable (Small)
            
            default:
                print("No Controller Is Removed !!!!!!!!!!!!!")
                return
            }
            currentControllerName = selectedController
        }
        
        
        //======== adding viewController in container view
        if selectedController == "HomeVC"{ addChildViewController(VC: HomeVC) }
         
        
        
         
 }
    
    
    @IBAction func btnHomeAction(_ sender: UIButton) {
        btnHome.setImage(UIImage(named: "House-1"), for: .normal)
        btnInspection.setImage(UIImage(named: "ShieldCheck"), for: .normal)
        btnBlogs.setImage(UIImage(named: "Newspaper"), for: .normal)
        btnSettings.setImage(UIImage(named: "Gear"), for: .normal)
        lblHome.textColor = AppColor.primaryBlue
        lblInspection.textColor = AppColor.greyText
        lblValuation.textColor = AppColor.greyText
        lblBlogs.textColor = AppColor.greyText
        lblSettings.textColor = AppColor.greyText
       
        addChildViewController(VC: HomeVC)
    }
    @IBAction func btnInspectionAction(_ sender: UIButton) {
        btnHome.setImage(UIImage(named: "House"), for: .normal)
        btnInspection.setImage(UIImage(named: "ShieldCheck-1"), for: .normal)
        btnBlogs.setImage(UIImage(named: "Newspaper"), for: .normal)
        btnSettings.setImage(UIImage(named: "Gear"), for: .normal)
        lblHome.textColor = AppColor.greyText
        lblInspection.textColor = AppColor.primaryBlue
        lblValuation.textColor = AppColor.greyText
        lblBlogs.textColor = AppColor.greyText
        lblSettings.textColor = AppColor.greyText
        addChildViewController(VC: HomeVC)
    }
    @IBAction func btnValuationAction(_ sender: UIButton) {
        btnHome.setImage(UIImage(named: "House"), for: .normal)
        btnInspection.setImage(UIImage(named: "ShieldCheck"), for: .normal)
        btnBlogs.setImage(UIImage(named: "Newspaper"), for: .normal)
        btnSettings.setImage(UIImage(named: "Gear"), for: .normal)
        lblHome.textColor = AppColor.greyText
        lblInspection.textColor = AppColor.greyText
        lblValuation.textColor = AppColor.primaryBlue
        lblBlogs.textColor = AppColor.greyText
        lblSettings.textColor = AppColor.greyText
        addChildViewController(VC: HomeVC)
    }
    @IBAction func btnBlogsAction(_ sender: UIButton) {
        btnHome.setImage(UIImage(named: "House"), for: .normal)
        btnInspection.setImage(UIImage(named: "ShieldCheck"), for: .normal)
        btnBlogs.setImage(UIImage(named: "Newspaper-1"), for: .normal)
        btnSettings.setImage(UIImage(named: "Gear"), for: .normal)
        lblHome.textColor = AppColor.primaryBlue
        lblInspection.textColor = AppColor.greyText
        lblValuation.textColor = AppColor.greyText
        lblBlogs.textColor = AppColor.primaryBlue
        lblSettings.textColor = AppColor.greyText
        addChildViewController(VC: HomeVC)
    }
    @IBAction func btnSettingsAction(_ sender: UIButton) {
        btnHome.setImage(UIImage(named: "House"), for: .normal)
        btnInspection.setImage(UIImage(named: "ShieldCheck"), for: .normal)
        btnBlogs.setImage(UIImage(named: "Newspaper"), for: .normal)
        btnSettings.setImage(UIImage(named: "Gear-1"), for: .normal)
        lblHome.textColor = AppColor.primaryBlue
        lblInspection.textColor = AppColor.greyText
        lblValuation.textColor = AppColor.greyText
        lblBlogs.textColor = AppColor.greyText
        lblSettings.textColor = AppColor.primaryBlue
        addChildViewController(VC: HomeVC)
    }
}


extension BaseVC{
   
    public func addChildViewController(VC: UIViewController){
        
        addChild(VC)
        view.addSubview(VC.view)
        VC.view.frame = containerView.bounds
        VC.view.autoresizingMask = [.flexibleWidth , .flexibleHeight]
        containerView.addSubview(VC.view)
    }
    public func removeVC(VC: UIViewController){
        VC.willMove(toParent: nil)
        VC.view.removeFromSuperview()
        VC.removeFromParent()
    }
    
}

