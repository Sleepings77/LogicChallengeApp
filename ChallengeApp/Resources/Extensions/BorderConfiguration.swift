//
//  BorderConfiguration.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import UIKit

extension UIView {
    
    func borderConfiguration(borderWidth: CGFloat? = nil,
                             borderColor: UIColor? = nil,
                             cornerRadius: CGFloat? = nil,
                             masksToBounds: Bool? = nil) {
        
        if let _borderWith = borderWidth {
            layer.borderWidth = _borderWith
        }
        
        if let _borderColor = borderColor {
            layer.borderColor = _borderColor.cgColor
        }
        
        if let _cornerRadius = cornerRadius {
            layer.cornerRadius = _cornerRadius
        }
        
        if let masksToBounds_ = masksToBounds {
            layer.masksToBounds = masksToBounds_
        }
    }
    
}
