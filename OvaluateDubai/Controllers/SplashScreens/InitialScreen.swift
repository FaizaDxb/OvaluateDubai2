//
//  InitialScreen.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit

class InitialScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("abc")
        let Vc = StoryView()
        let navigationController = UINavigationController(rootViewController: Vc)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)
        // Do any additional setup after loading the view.
    }
    


}
