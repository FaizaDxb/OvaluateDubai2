//
//  StoryBoards.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import UIKit
enum Storyboard: String {
    case Home = "Home"
    case registration_Login = "Registration_Login"
    case splashscreen = "SplashScreen"
    
    
    

    func instantiate<T>(identifier: T.Type) -> T {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        guard let viewcontroller = storyboard.instantiateViewController(withIdentifier: String(describing: identifier)) as? T else {
            fatalError("No such view controller found")
        }
        return viewcontroller
    }
}

