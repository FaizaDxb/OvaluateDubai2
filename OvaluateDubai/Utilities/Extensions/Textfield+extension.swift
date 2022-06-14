//
//  Textfield+extension.swift
//  OvaluateDubai
//
//  Created by Apple on 13/06/2022.
//

import Foundation
import UIKit

extension UITextField {
    func setIcon(_ image: UIImage  ,tintcolor : UIColor) {

        let iconView = UIImageView(frame:
            CGRect(x: 8 , y: 4, width: 10, height: 10))
        iconView.image = image
        iconView.tintColor = tintcolor
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 10 , y: 0, width: 20 , height: 20))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
}
